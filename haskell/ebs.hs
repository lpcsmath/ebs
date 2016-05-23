--
-- ebsaux f 1 b n = f b^n
--
ebsaux :: (Int -> Int) -> Int -> Int -> Int -> Int
ebsaux f a b 0 = a
ebsaux f a b n =
    let
       a' = case mod n 2 of 1 -> f (a*b)
                            _ -> f a
       b' = f (b*b)
       n' = div n 2
    in
       ebsaux f a' b' n'

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
