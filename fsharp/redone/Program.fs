open System


let pi iters =
    let rec pi' a s n p =
        match n with
        | x when x = iters -> p
        | _ -> pi' (a + 2.0) (-s) (n + 1)
                   (p + s * (4.0 / (a * (a * (a + 3.0) + 2.0))))
    pi' 2.0 1.0 0 3.0

[<EntryPoint>]
let main argv =
    Console.WriteLine("pi = {0}", (pi 150000))
    0 // return an integer exit code
