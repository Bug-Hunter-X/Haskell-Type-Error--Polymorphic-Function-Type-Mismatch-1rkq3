The solution is to either make the function more specific or provide explicit type annotations when calling the function. Here are two ways to fix the code:

**Solution 1: Explicit Type Signature for `g`**

```haskell
f :: a -> b -> (a,b)
f x y = (x,y)

g :: Int -> String -> (Int, String)
g x y = f x y
```
By specifying the types for `g`, we explicitly tell the compiler that `a` should be `Int` and `b` should be `String`, resolving the ambiguity.

**Solution 2: Type Annotations in the function definition of `f`
```haskell
f :: (Num a, Show b) => a -> b -> (a, b)
f x y = (x, y)

g :: Int -> String -> (Int, String)
g = f
```
This works because the type signature is now more specific.  We're saying that 'a' must be a member of the Num typeclass, and 'b' must be a member of the Show typeclass. While 'Int' is a member of Num, 'String' is not a member of Num. Therefore this will only work with types that meet the specific type constraints.  This showcases how adding type constraints can prevent unexpected behavior when using polymorphic functions.