import LeanPlayground

def main : IO Unit := do
  IO.println s!"Hello, {LeanPlayground.hello}!"
  IO.println "Try editing LeanPlayground/Basic.lean."
  IO.println "Suggested first steps: change `double`, add an `example`, then run `lake build`."
