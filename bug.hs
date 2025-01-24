This Haskell code attempts to use a polymorphic function `f` with a type that is not possible due to the type system's constraints.

```haskell
f :: a -> b -> (a,b)
f x y = (x,y)

g :: Int -> String -> (Int, String)
g = f
```

The compiler will complain about this, usually with a type mismatch error.
The issue is that `f`'s type signature is too general. While `f` works correctly, the type `a -> b -> (a,b)` isn't specific enough when applied to `g` which requires specific types (Int and String).