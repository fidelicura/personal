(* Self-made solutions for exercises from https://ocaml.org/exercises *)

(* `last` - Beginner Level *)
let rec last arr =
  match arr with
  | [elem] -> Some elem
  | _ :: rest -> last rest
  | _ -> None

(* `last_two` - Beginner Level *)
let rec last_two arr =
  match arr with
  | [x; y] -> Some [x; y]
  | _ :: rest -> last_two rest
  | _ -> None

(* `nth` - Beginner Level (WIP) *)
let rec nth arr idx =
  if idx >= List.length arr || idx < 0 then Failure "nth" else
  let counter = ref 0 in
  match arr with
    | first :: rest -> begin
      counter := !counter + 1;
      if counter = ref idx then first else nth rest idx
    end
    | _ -> Failure "nth"
