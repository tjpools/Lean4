namespace LeanPlayground

/-!
# Lesson 2: Functions and Recursion

In Lesson 1 we learned that Lean can:

* check types with `#check`
* evaluate expressions with `#eval`
* define constants with `def`

Now we focus on functions.

A function is a typed transformation.

	Nat → Nat

means:

	takes a Nat
	returns a Nat

Lean treats functions as first-class values.
-/

/-!
## Function Types
-/

#check Nat → Nat
#check Nat → Nat → Nat

def addOne (n : Nat) : Nat :=
  n + 1

#check addOne

#eval addOne 5


/-!
## Multiple Arguments

The type

	Nat → Nat → Nat

really means

	Nat → (Nat → Nat)

Functions are curried by default.
-/

def add (a : Nat) (b : Nat) : Nat :=
  a + b

#check add

#eval add 3 4


/-!
## Partial Application

Supplying fewer arguments produces
another function.
-/

def addTen : Nat → Nat :=
  add 10

#check addTen

#eval addTen 5
#eval addTen 20


/-!
## Function Composition by Nesting
-/

def doubleNat (n : Nat) : Nat :=
  n * 2

#eval doubleNat (addOne 4)


/-!
## Pattern Matching

Natural numbers have two constructors:

	Nat.zero
	Nat.succ

We can define functions by cases.
-/

def isZero : Nat → Bool
  | 0 => true
  | _ => false

#eval isZero 0
#eval isZero 7


/-
## Recursion

A recursive function refers to itself.

Lean requires recursion to be structural,
meaning each recursive call is made on a
smaller piece of data.
-/

def countdown : Nat → Nat
  | 0 => 0
  | n + 1 => countdown n

#eval countdown 10


/-
## Recursive Addition

This is not how Lean's built-in addition
is defined internally, but it illustrates
structural recursion.
-/

def myAdd : Nat → Nat → Nat
  | 0, b => b
  | a + 1, b => myAdd a b + 1

#eval myAdd 3 4
#eval myAdd 10 20


/-
## Recursive Multiplication
-/

def myMul : Nat → Nat → Nat
  | 0, _ => 0
  | a + 1, b => myMul a b + b

#eval myMul 3 4
#eval myMul 5 6


/-
## Exercises

Modify and experiment with these definitions.
The file should always compile.
-/

def triple (n : Nat) : Nat :=
  n * 3

#eval triple 5


def square (n : Nat) : Nat :=
  n * n

#eval square 7


def predecessor : Nat → Nat
  | 0 => 0
  | n + 1 => n

#eval predecessor 0
#eval predecessor 10


def factorial : Nat → Nat
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

#eval factorial 5

end LeanPlayground
