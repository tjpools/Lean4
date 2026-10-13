# LeanPlayground

A small Lean 4 starter project for learning by doing.

## What is here

- `LeanPlayground/Basic.lean` - simple definitions, examples, and one inductive proof
- `LeanPlayground/Functions.lean` - Lesson 2 on function types, currying, and structural recursion
- `LeanPlayground/Syntax.lean` - Lesson 1 on expressions, types, evaluation, and functions
- `Main.lean` - tiny executable so you can run the project
- `lakefile.toml` - project configuration managed by Lake

## Learning path

1. Start with `LeanPlayground/Syntax.lean`
   - use `#check` to ask what type an expression has
   - use `#eval` to see how a well-typed expression reduces
   - treat functions as typed objects, not just code snippets
2. Continue to `LeanPlayground/Functions.lean`
   - function types like `Nat → Nat → Nat`
   - currying and partial application
   - structural recursion on `Nat`
3. Continue to `LeanPlayground/Basic.lean`
   - recursion on lists
   - examples as exact checks
   - a first inductive theorem

## Useful commands

From this folder:

- `lake build`
- `lake exe leanplayground`

If a new terminal does not recognize `lake` yet, use:

- `C:\Users\tmcla\.elan\bin\lake.exe build`

## Good first exercises

1. Change `double` so it uses multiplication.
2. Add `example : sumList [5, 5] = 10 := rfl`.
3. Define `triple : Nat -> Nat`.
4. Prove a small theorem about your new function.
