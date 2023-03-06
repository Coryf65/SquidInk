import json
import os
from pathlib import Path
from zipfile import ZipFile
import shutil

# This simple script is to zip the mod folder
BASE_DIR = Path(__file__).absolute().parent
RELEASE_PATH = Path(BASE_DIR / "Releases")
FACOTRIO_PATH = Path("C:/Users/Cory/AppData/Roaming/Factorio/mods")
INFO_FILE = Path(BASE_DIR / "SquidInk_/" / "info.json")
#CORY = Path(RELEASE_PATH / "SquidInk_")

# colors for the terminal (https://en.wikipedia.org/wiki/ANSI_escape_code#Colors)
WHITE  = '\033[0m'
RED  = '\033[31m'
YELLOW  = '\033[93m'
GREEN  = '\033[32m'
ORANGE  = '\033[33m'
BLUE  = '\033[34m'
PURPLE  = '\033[35m'

# get version number from /SquidInk_/prototypes/info.json - "factorio_version": "1.1", and set in release name xip file
def get_mod_version():
    """
    Gets the mods version from the "info.json" file "version": "1.0.3", will return "1.0.3"
  
    Returns:
        (string): Version of the current mod listed from the info.json file ie: "1.0.3"
    """
    print("finding info file...")
    with open(INFO_FILE.absolute(), 'r+') as info_file:
        print(GREEN, "☑ found info.json file:", INFO_FILE, WHITE)
        info_file_data = json.load(info_file)
    print("Mod Version:", info_file_data["version"])
    return info_file_data["version"]

# Zip the folder /SquidInk_
def compress_folder(base_folder, version, display_zipping = False):
    """
    Compress / Zip a folder and add the current Mod Version to the end. ie: "SquidInk_1.1.2.zip"
  
    Parameters:
        base_folder (string): Path of the folder to compress
        version (string): Mod version which is added to the end of the filename
        display_zipping (string): Shows what Zipped in console defaults to false
  
    Returns:
        (string): Name of the file that we compressed
    """
    file_name = "SquidInk_" + version # zip file name
    
    shutil.make_archive(file_name, format="zip", root_dir=".", base_dir=base_folder)

    if display_zipping:
        print("Contents of the zip file:\n")
        with ZipFile(file_name + ".zip", 'r') as zip:
            zip.printdir()

    print("\n")
    return file_name + ".zip" # filename compressed
    
def make_folder(folder_name, path):
    """
    Create a folder
  
    Parameters:
        folder_name (string): Name for the folder / directory to be called
        path (string): Path of where to place this folder ie: "/home/here/"
    """
    print("creating staging folder: ", str(Path(path / folder_name)))
    folder = Path(path / folder_name)
    if folder.exists():
        shutil.rmtree(folder)
    os.mkdir(folder, 0o775)

def copy_folder(folder_to_copy, destination, remove = True):
    print(YELLOW ,"Copying", folder_to_copy, "into", destination, WHITE)

    if remove:
        print(RED, "☒ folder exists removing now", WHITE)
        shutil.rmtree(destination)
    shutil.copytree(folder_to_copy, destination)

def move_file(file, destination):
    """
    Moves a file into a new destination.
  
    Parameters:
        file (string): Path to the file/folder you want to move ie: "/somefolder/here"
        destination (string): Path to the destination place where to place this file/folder "/newplace"
    """
    print("Moving", file, "into", destination)
    old_file = Path(destination / file)
    
    if old_file.exists():
        print(RED, "☒ a file exists removing now", WHITE)
        os.remove(old_file)

    shutil.move(file, destination)

def copy_file(file, destination):
    """
    Copies a file into a new destination.
  
    Parameters:
        file (string): filename ie: modname_1.0.0.zip
        destination (string): Path to the destination place where to place this file "/newplace"
    """
    print("Copying", file, "into", destination)
    old_file = Path(destination / file)

    shutil.copy(file, destination)

# Defining main function
def main():
    print(PURPLE + "==============================================================================================")
    print("Building Squid Ink Release, This simple script is to zip the mod folder and deploy to facotrio")  
    print("==============================================================================================\n", WHITE)
    
    see_tree = False    
    mod_version = get_mod_version()
    
    # then zip
    zipped_name = compress_folder("SquidInk_", mod_version, see_tree)
    
    # check to update factorio mods folder
    move_file(zipped_name, RELEASE_PATH)

    #should_update = input("Would you like to update the Factorio Mods folder with this update?\n")
    should_update = "y"

    # update Factorio mods folder with new version
    if should_update.lower() == "y" or should_update.lower() == "true":
        print("Updating Factorio Mods Folder... ")
        # NotADirectoryError: [WinError 267] The directory name is invalid: 'x:\\Code\\Github\\SquidInk\\Releases\\SquidInk_1.1.0.zip'
        copy_file(Path(RELEASE_PATH / zipped_name), FACOTRIO_PATH)

    print(GREEN, "Succesfully Completed.", WHITE)

if __name__=="__main__":
    main()