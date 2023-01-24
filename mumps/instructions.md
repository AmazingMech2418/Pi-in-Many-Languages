# Instructions

I still have yet to make a Repl.it version of this, but it can currently run on any Linux device or any other device with a proper MUMPS interpreter!

## Downloading MUMPS

To download the MUMPS interpreter on a Debian-based Linux distribution, such as Ubuntu, follow these basic steps:
- Run `sudo apt install fis-gtm`
- Run `source /usr/lib/x86_64-linux-gnu/fis-gtm/V6.3-014_x86_64/gtmprofile`
- Test the GT.M interpreter by typing `gtm`

## Runing the program

To run on Linux, first, create a file in a directory with the code in `NilakanthaPi.m`.

Then, follow these steps to run the program:
- Create a symbolic link in the MUMPS directory to your file by running `ln -s <path>/<to>/<directory>/* ~/.fis-gtm/V6.3-014_x86_64/r`
- Run `mumps -run ^NilakanthaPi`

And now you have the pi approximator in MUMPS!

## About MUMPS

MUMPS, often abbreviated as M, stands for Massachusetts General Hospital Utility Multi-Programming System. 

The language was originally developed to help store data at Massachusetts General Hospital as a database language, which has also been used in hospitals around the United States ever since. It first appeared in 1966, just 9 years after Fortran, the first modern programming language, was invented.

This specifically runs with the GT.M compiler, which stands for Greystone Technology M. GT.M can run any standard MUMPS program, but uses a compiler to improve the speed.
