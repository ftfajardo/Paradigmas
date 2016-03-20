--ex1

somaQuad :: Int -> Int -> Int
somaQuad x y = (x^2) +(y^2) 

--ex2

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads   lis1 lis2 = if head lis1 == head lis2 then True else False 

--ex3

concatena :: [String] -> [String]
concatena  lis1 = map("Sr."++) lis1 

--ex4

filterE :: String -> Int
filterE list1 = length(filter(== ' ')list1 )

--ex5

calculoC :: [Float] -> [Float]
calculoC list1 = map((\n ->   3*n^2 + 2/n +1 ))list1   

--ex6
num_Neg :: [Int] -> [Int]
num_Neg  lis  = filter(<0)lis

--ex7
num_Entr :: [Int] ->  [Int]
num_Entr  lis = filter(\x-> x<=100 && x>=1)lis

--ex8 sub direto
num_Data :: [Int]-> [Int]
num_Data lis =  filter(\x-> x<= 46 && x>= 0)lis

--ex9
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False
num_Par :: [Int] -> [Int]
num_Par lis = filter isEven lis

--ex10
charFound :: Char -> String -> Bool
charFound char string = char `elem` string


--ex11
--takeWhile (< 0) [1,2,3]
--resultado == []

--ex12
func_Last :: [String] -> [String]
func_Last list = filter (\n-> 'a' == (last n) )list
