--1
addSuffix :: String -> [String] -> [String]
addSuffix str lst = [ l++str | l<- lst]

--2
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (y:ys) = if length y < 5 then 1 + countShorts ys else countShorts ys

--3
countShorts2 :: [String] -> Int
countShorts2 str  =  length [x | x <- str, (length x) < 5]

--4
ciclo :: Int -> [Int] -> [Int]
ciclo 0 _ = []
ciclo n lst = lst ++ ciclo(n-1) lst

--5
numera :: [String] -> [(Int,String)]
numera str = funcaux 1 str

funcaux ::Int -> [String] -> [(Int,String)]
funcaux _ [] = []
funcaux  n str = (n,head str):funcaux (n+1) (tail str)

--6
--a -> gera o x de um até 5 mas só pega os pares para o par , 
--depois gera os y a partir do 2 e só pega os impares para o par.
--[(2,3),(2,5)(4,5)]


--b->ele concatena o elemento 1:1 depois 1:2 , depois 2:1 , depois  2:2, tudo isso numa lista de strings.

--c->  concatena numa string com traços tudo que nao tem vogal


--7

cProduct :: [Int] -> [Int] -> [(Int,Int)]
cProduct [] _ = []
cProduct _ [] = []
cProduct (x:xs) lst = (pairWithall x lst) ++ cProduct xs lst

pairWithall :: a-> [b] -> [(a,b)]
pairWithall _ [] = []
pairWithall a (x:xs) = (a,x) : pairWithall a xs

--8
genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects n (x, y) = [((fromIntegral x)+xs, fromIntegral y, 5.5, 5.5) | xs <- [0.0, 5.5..5.5*(fromIntegral n-1)]]

--9
func :: [(Int,Int)] -> ([Int],[Int])
func [] = ([],[])
func (x:xs) = (fst x:(fst (func xs)), snd x: (snd (func xs)))

--10
func2 lst = ([fst x | x<- lst],[snd x|x<-lst])

--11
func3 lst = (map fst lst, map snd lst)

--12


