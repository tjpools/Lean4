namespace LeanPlayground

#check 3 + 4
#check true
#check [1, 2, 3]

#eval 3 + 4
#eval if true then 1 else 0

def greeting : String := "Good morning, Lean"

def favoriteNumber : Nat := 42

def inc (x : Nat) : Nat :=
  x + 1

#check inc
#check fun x : Nat => x + 1
#eval inc 7

def firstOrZero : List Nat → Nat
  | [] => 0
  | x :: _ => x

#eval firstOrZero []
#eval firstOrZero [9, 8, 7]

def swapPair (p : Nat × Bool) : Bool × Nat :=
  (p.2, p.1)

#eval swapPair (5, true)

example : favoriteNumber = 42 := rfl
example : inc 4 = 5 := rfl
example : firstOrZero [10, 20, 30] = 10 := rfl
example : swapPair (7, false) = (false, 7) := rfl

-- Exercise 1: change this definition and re-run `lake build`.
def doubleViaMul (n : Nat) : Nat :=
  2 * n

example : doubleViaMul 6 = 12 := rfl

-- Exercise 2: try replacing the body with pattern matching.
def describeBool (b : Bool) : String :=
  if b then "saw true" else "saw false"

#eval describeBool true
#eval describeBool false

-- Exercise 3: make a new function with type `Nat → Nat → Nat`.
def addThenInc (x y : Nat) : Nat :=
  inc (x + y)

example : addThenInc 2 3 = 6 := rfl

#check Nat.succ
#check True
#check False
#check And

end LeanPlayground
