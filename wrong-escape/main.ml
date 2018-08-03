module M = Other_module

let foo () =
  match assert false with
  | M.Sub.Pack x ->
    ignore x;
    print_endline "the end"
