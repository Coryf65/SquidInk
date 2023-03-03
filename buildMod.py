import json
import os
from pathlib import Path
from zipfile import ZipFile
import shutil
# This simple script is to zip the mod folder

BASE_DIR = Path(__file__).absolute().parent
RELEASE_PATH = Path(BASE_DIR / "Releases")
INFO_FILE = Path(BASE_DIR / "SquidInk_/" / "info.json")
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
    print("☑ found info.json file:", INFO_FILE)
    with open(INFO_FILE.absolute(), 'r+') as info_file:
        info_file_data = json.load(info_file)
    print("Mod Version:", info_file_data["version"])
    return info_file_data["version"]

# Zip the folder /SquiInk_
def compress_folder(folder, version, display_zipping = False):
    """
    Compress / Zip a folder and add the current Mod Version to the end. ie: "SquidInk_1.1.2.zip"
  
    Parameters:
        folder (string): Path of the folder to compress
        version (string): Mod version which is added to the end of this zip
        display_zipping (string): Show the Zipping files in console defaults to false
  
    Returns:
        (string): Name of the file that we compressed
    """
    file2 = "SquidInk_" + version # zip file name
    file = "SquidInk_" # zip file name
    directory = folder
    base_folder = Path(file, file2)

    print(GREEN, file2, WHITE)
    print(GREEN, file, WHITE)
    print(GREEN, str(directory), WHITE)
    print(GREEN, str(base_folder), WHITE)

    #make a new folder with the version
    if file2.exists():
        print(RED, "☒ a file exists removing now", WHITE)
        os.remove(file2)
    os.mkdir(file2, 777)

    # copy all contents into it
    print(YELLOW ,"Copying", directory, "into", file2, WHITE) 
    shutil.copy(directory, file2)

    # then zip

    #make_archive(file, "zip", directory)  # zipping the directory
    with ZipFile(file + ".zip", mode="w") as archive:
        for file_path in directory.rglob("*"):
            archive.write(
                file_path,
                arcname=file_path.relative_to(directory)
            )

    if display_zipping:
        print("Contents of the zip file:\n")
        with ZipFile(file + ".zip", 'r') as zip:
            zip.printdir()

    print("\n")
    return file + ".zip" # filename compressed
    
def move_file(file, destination):
    """
    Moves a file or folder into a new destination.
  
    Parameters:
        file (string): Path to the file/folder you want to move ie: "/somefolder/here"
        destination (string): Path to the destination place where to place this file/folder "/newplace"
    """
    print("Moving", file, "into", destination)
    old_file = Path(destination / file)
    
    if old_file.exists():
        print("☒ a file exists removing now")
        os.remove(old_file)

    shutil.move(file, destination)

# Defining main function
def main():
    print("Building Squid Ink Release ")
    mod_version = get_mod_version()
    
    # maybe make folder move all into then zip?

    zipped_name = compress_folder(Path(BASE_DIR / "SquidInk_"), mod_version, True)
    
    move_file(zipped_name, RELEASE_PATH)
  
# Using the special variable 
# __name__
if __name__=="__main__":
    main()