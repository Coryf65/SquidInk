import json
import os
from pathlib import Path
from zipfile import ZipFile
# This simple script is to zip the mod folder
# may also update to the mod portal

BASE_DIR = Path(__file__).absolute().parent
INFO_FILE = Path(BASE_DIR / "SquidInk_/" / "info.json")

# get version number from /SquidInk_/prototypes/info.json - "factorio_version": "1.1", and set in release name xip file
def get_mod_version():
    print("reading file:", INFO_FILE)
    with open(INFO_FILE.absolute(), 'r+') as info_file:
        info_file_data = json.load(info_file)
    print("Mod Version:", info_file_data["version"])
    return info_file_data["version"]

# Get folder
def get_mods_folder():
        print("path")

# Zip the folder /SquiInk_
def compress_folder(folder, version):
    file = folder + version # "Geeks.zip"  # zip file name
    directory = Path(BASE_DIR / "SquidInk_/") # "School"
    with ZipFile(file, 'w') as zip:
        for path, directories, files in os.walk(directory):
            for file in files:
                file_name = os.path.join(path, file)
                zip.write(file_name) # zipping the file
    print("Contents of the zip file:")
    with ZipFile(file, 'r') as zip:
        zip.printdir()


# Defining main function
def main():
    print("Building Squid Ink Release ...")
    mod_version = get_mod_version()
    compress_folder(Path(BASE_DIR / "SquidInk_"), mod_version)

  
# Using the special variable 
# __name__
if __name__=="__main__":
    main()

# zip folder

# change name to SquidInk_{modversion}.zip

# place zipped file into /Releases

# maybe update to the factorio mod portal
