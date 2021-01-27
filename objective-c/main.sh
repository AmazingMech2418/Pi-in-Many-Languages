# Thank you, @Atias for helping with this compiler script!

# For Objective C++ if you want that
#clang++ -o main main.m `gnustep-config --base-libs` -fblocks -fobjc-arc
# Objective C
clang `gnustep-config --objc-flags` main.m -o main  `gnustep-config --base-libs`


chmod +x main

./main

rm main
rm main.d
