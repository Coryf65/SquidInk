# Build Script
# Creates a build of my Factorio Mod Files
# Zips my folder so that I don't have to !
# Created by: Cory Fabian
# Date: 09-25-2020

import os
from os import path
import shutil
from shutil import make_archive

def main(version):
  # make a duplicate of an existing file
  if path.exists("SquidInk_"):

        # New filename with version
        new_filename = "SquidInk_" + version

        # get the path to the file in the current directory
        src = path.realpath("SquidInk_")    
        
        # now put things into a ZIP archive
        shutil.make_archive(new_filename, "zip", src)
        
if __name__ == "__main__":    

    # Version Number
    version = "1.0.2"

    main(version)