


len [] = 0
--len [x] = 1
--len ((++) x y) = len x + len y
len (x:y) = 1 + len y

--merge [] [] = []
merge [] x = x
--merge [x] y = x:y
--merge ((++) x xs) y = (head x):(merge ((++) (tail x) xs) y)
merge (x:xs) y = x:(merge xs y)

reverte [] = []
reverte ls = (last ls):(reverse (init ls))

cabeca [] = error "n ha cabeca"
--cabeca [x] = x
--cabeca ((++) x y) = cabeca x
cabeca (x:y) = x

cauda [] = []
-- cauda [x] = []
-- cauda ((++) x y) = (++) (cauda x) y
cauda (x:xs) = xs

-- pega 0 _ = []
pega n [] = []
pega n (x:xs) = if n <= 0 then [] else x:(pega (n-1) xs)

larga 0 li = li
larga n [] = []
larga n (x:xs) = if n >= (length (x:xs)) then [] else (larga (n-1) xs)

primeiro (x,_) = x

segundo (_,y) = y

--zip [] [] = []
zipa _ [] = []
zipa [] _ = []
-- zipa [x] [y] = (x,y)
-- zipa ((++) x y) = (head x, head y):(zipa (tail x) (tail y))
zipa (x:xs) (y:ys) = (x,y):(zip xs ys)
