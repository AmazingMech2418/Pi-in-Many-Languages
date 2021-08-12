using System;

namespace PiApproximator {
    class Nilakantha {
        private double a;
        private int s;
        private double pi;

        public Nilakantha() {
            a = 2;
            s = 1;
            pi = 3;
        }

        public void iterate() {
            pi += s * ( 4 / (double) (a * (a * (a + 3) + 2)));
            a += 2;
            s = -s;
        }

        public double getPi() {
            return pi;
        }
    }
}
