# Haskell Type Error: Polymorphic Function Type Mismatch

This repository demonstrates a common Haskell type error related to polymorphic functions and type constraints. The `bug.hs` file contains code that attempts to use a polymorphic function with an inappropriate type signature, leading to a compiler error.  The `bugSolution.hs` file presents the corrected version.

**Problem:** The original code defines a function `f` with a very general type signature `a -> b -> (a, b)`.  Attempting to use this function with specific types (Int and String) results in a type mismatch error because the compiler cannot unify the generic types `a` and `b` with the concrete types `Int` and `String` in a way that satisfies all constraints.

**Solution:** The solution modifies the function definition or application to make the types explicit and compatible, resolving the type error. This ensures the compiler can infer and match types correctly during compilation.