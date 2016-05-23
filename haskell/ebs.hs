ebsaux :: Int -> Int -> Int -> Int
ebsaux a b 0 = a
ebsaux a b n =
    let
       a' = case mod n 2 of 1 -> a*b
                            _ -> a
       b' = b*b
       n' = div n 2
    in
       ebsaux a' b' n'

ebs :: Int -> Int -> Int
ebs x = ebsaux 1 x
