module AST = struct
  type num =
  | Int of int
  | Long of int
  | Float of float
  | Double of float

  type value = 
  | Num of num
  | String of string

  type expr =
  | Val of value
  | Var of string
  | Sum of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr
  | Func of func
  and func =
  {
    name : string;
    args : expr list;
  }
end