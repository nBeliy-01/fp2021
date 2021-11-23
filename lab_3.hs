-- завдання №1
-- reverse list = foldl (flip (:)) [] list

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x:xs)
        | p x = x : takeWhile p xs
        | otherwise = []

-- takeWhile (< 3) [1,2,3,4,1,2,3,4] == [1,2]
-- takeWhile (< 9) [1,2,3] == [1,2,3]
-- takeWhile (< 0) [1,2,3] == []
