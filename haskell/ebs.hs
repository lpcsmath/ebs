module Ebs (
    ebs,
    ebsmod
) where

--
-- ebsaux f 1 b n = f b^n
--
ebsaux :: (Int -> Int) -> Int -> Int -> Int -> Int
ebsaux f a b 0 = f a
ebsaux f a b 1 = f (a*b)
ebsaux f a b n =
    let
       a' = case mod n 2 of 1 -> f (a*b)
                            _ -> f a
    in
       ebsaux f a' (f (b*b)) (div n 2)

--
-- ebs x n = x^n
--
ebs :: Int -> Int -> Int
ebs x = ebsaux id 1 x

--
-- ebsmod x n m = x^n (mod m)
--
ebsmod :: Int -> Int -> Int -> Int
ebsmod x n m = ebsaux (`mod` m) 1 x n
