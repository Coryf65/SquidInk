import json
import os
from pathlib import Path
from zipfile import ZipFile
from shutil import make_archive
import shutil
# This simple script is to zip the mod folder
# may also update to the mod portal

BASE_DIR = Path(__file__).absolute().parent
RELEASE_PATH = Path(BASE_DIR / "Releases")
INFO_FILE = Path(BASE_DIR / "SquidInk_/" / "info.json")

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
    file = "SquidInk_" + version # zip file name
    directory = folder
    make_archive(file, "zip", directory)  # zipping the directory
    
    if display_zipping:
        print("Contents of the zip file:\n")
        with ZipFile(file + ".zip", 'r') as zip:
            zip.printdir()
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
        print("☒ a file exists removing now...")
        os.remove(old_file)

    shutil.move(file, destination, True)

# Defining main function
def main():
    print("Building Squid Ink Release ...")
    mod_version = get_mod_version()
    zipped_name = compress_folder(Path(BASE_DIR / "SquidInk_"), mod_version, True)
    move_file(zipped_name, RELEASE_PATH)
  
# Using the special variable 
# __name__
if __name__=="__main__":
    main()