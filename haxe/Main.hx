class Main {
    static public function main():Void {
        // Create approximator
        var approximator = new Nilakantha();

        // Loop 150,000 times
        for(i in 0...150000) {
            // Iterate approximator
            approximator.iterate(); 
        }
        // Get result
        var pi = approximator.getPi();

        // Print pi in the way that works best
        #if sys
            Sys.println("pi = " + pi);
        #else
            trace("pi = " + pi);
        #end
  }
}
