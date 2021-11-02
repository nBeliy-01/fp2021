
-- list :: [x] -> x
-- list [x] = 

last' [ ] = error "list is empty"
last' [х] = х
last (_:xs) = last' xs