/*
 *# Pi in Prolog
 *# Note: the "#" isn't needed for Prolog comments, but it helps make it look better in Repl.it.
 */

% # 0-parameter predicates - to make the compiler happy
a.
s.
p.
% # Define "a" function
a(X, A) :- A is (X + 1) * 2.0.
% # Define "s" function
% # - Dependent on modulus function 
s(X, S) :- 0 =:= mod(X, 2), S is 1.0.
s(X, S) :- 1 =:= mod(X, 2), S is -1.0.
% # Define function to calculate pi
p(0, P) :- P is 3.0.
% # Recursive implementation
p(X, P) :- X > 0,
    X2 is X - 1,         % # Store for X - 1
    a(X2, A),            % # Get a value
    s(X2, S),            % # Get s value
    p(X2, Old),          % # Get last value of pi
    P is Old + S*(4.0/(A*(A*(A+3.0)+2.0))). % # Calculate pi
main :- write("pi = "), % # Main function
    X is 150000, % # 150,000 iterations
    p(X, P), % # Calculate
    write(P). % # Print result
:- main. 
