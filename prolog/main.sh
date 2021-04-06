# Method 1: gprolog
# Failed due to instantiation_error
#if ! which gprolog > /dev/null; then install-pkg gprolog; fi

# Method 2: @Scoder12's gprolog binary
# Wouldn't load module 
#wget https://repl.it/@Scoder12/prolog.zip
#mv prolog.zip gprolog.zip
#unzip gprolog.zip
#chmod +x gprolog

# Run script for gprolog implementations
#cat run.pl | gprolog #./gprolog

# Method 3: RexTester API
# https://rextester.com/l/prolog_online_compiler
# Just copied as node-fetch and added it to a JS file...
npm install node-fetch
clear
node index.js
