module RCN where

type Repr a = forall r. (a -> r) -> r
int :: Int -> Repr Int
bool :: Bool -> Repr Bool
lam :: (Repr a -> Repr b) -> Repr (a -> b)
app :: Repr (a -> b) -> Repr a -> Repr b
fix :: (Repr a -> Repr a) -> Repr a
add :: Repr Int -> Repr Int -> Repr Int
mul :: Repr Int -> Repr Int -> Repr Int
leq :: Repr Int -> Repr Int -> Repr Bool
if_ :: Repr Bool -> Repr a -> Repr a -> Repr a
