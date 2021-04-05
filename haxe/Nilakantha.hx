class Nilakantha {
    // Instance variables
    private var s: Int;
    private var pi: Float;
    private var a: Int;

    // Constructor
    public function new() {
        s = 1;
        a = 2;
        pi = 3;
    }

    // Method for iterating
    public function iterate(): Void {
        pi += s*(4.0/(a*(a*(a+3.0)+2.0)));
        a += 2;
        s = -s;
    }

    // Accessor method for pi
    public function getPi(): Float {
        return pi;
    }
}
