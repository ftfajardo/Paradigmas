--exerc1

somaQuad :: Int -> Int -> Int
somaQuad x y = (x^2) +(y^2) 

--exerc2

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads   lis1 lis2 = if head lis1 == head lis2 then True else False 

--exerc3

concatena :: [String] -> [String]
concatena  lis1 = map("Sr."++) lis1 

--ex4

filterE :: String -> Int
filterE list1 = length(filter(== ' ')list1 )

--ex5

calculoC :: [Float] -> [Float]
calculoC list1 = map((\n ->   3*n^2 + 2/n +1 ))list1   

