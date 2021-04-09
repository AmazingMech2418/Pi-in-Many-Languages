# Note: This will not run on Repl.it or any other online IDE I can find. It won't run on Repl.it because installing gnat can't modify gcc and it uses gcc to compile.

# If this program fails, install gnat, using `sudo apt install gnat` for Debian-based distros.

gcc -c nilakantha.adb

gcc -c main.adb
gnatbind main
gnatlink main
./main
