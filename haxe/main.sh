# Install Haxe
if ! which haxe > /dev/null; then install-pkg haxe; fi
# Run program
haxe --main Main --interp
