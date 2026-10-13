namespace LeanPlayground

def hello : String := "Lean 4"

def double (n : Nat) : Nat :=
  n + n

def isEven (n : Nat) : Bool :=
  n % 2 == 0

def sumList : List Nat -> Nat
  | [] => 0
  | x :: xs => x + sumList xs

example : double 3 = 6 := rfl
example : isEven 4 = true := rfl
example : sumList [1, 2, 3, 4] = 10 := rfl

theorem double_eq_add_self (n : Nat) : double n = n + n := rfl

theorem sumList_append (xs ys : List Nat) :
  sumList (xs ++ ys) = sumList xs + sumList ys := by
  induction xs with
  | nil =>
    simp [sumList]
  | cons x xs ih =>
    simp [sumList, ih, Nat.add_assoc]

end LeanPlayground
