using System;

namespace PiApproximator {
    class Program {
        static void Main(string[] args) {
            Nilakantha approximator = new Nilakantha();

            for(int i = 0; i < 150000; i++) {
                approximator.iterate();
            }

            Console.WriteLine("pi = {0}", approximator.getPi());
        }
    }
}
