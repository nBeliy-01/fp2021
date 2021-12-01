-- Лабораторна робота №4
-- Студента групи АнД - 31
-- Білухи Назара Романовича
-- Варіант № 1
-- Мета: Ознайомитись з системою типiв та класiв типiв. Набути досвiду визначення нових типiв та класiв типiв i їх використання.

-- Завдання 
-- Використовуються такi фiгури, як коло (центр та радiус), прямокутник (координати лiвої верхньої та правої нижньої точок), трикутник 
--(координати вершин) та мiтка — label (координати лiвої нижньої точки, шрифт та рядок).

data Circle = Circle Float Float Float
x (Circle x1p _ _ ) = x1p
y (Circle _ x2p _ ) = x2p
radius (Circle _ _ r ) = r

circles = [(Circle 0 0 3), 
            (Circle 0 0 4),
            (Circle 1 1 2)]

square_circles [] = []
square_circles (x : xs) = 3.1415 * radius x * radius x : square_circles xs
getCircle = [square_circles circles]

data Rectangle = Rectangle Float Float Float Float
x1 (Rectangle x1p _ _ _ ) = x1p
y1 (Rectangle _ y1p _ _ ) = y1p
x2 (Rectangle _ _ x2p _ ) = x2p
y2 (Rectangle _ _ _ y2p ) = y2p

rectangles = [
    Rectangle 0 0 1 1,
    Rectangle 2 2 5 5,
    Rectangle 0 (-1) 1 0 ]

square_rectangle [] = []
square_rectangle (x : xs) = abs(x2 x - x1 x) * abs(y2 x - y1 x) : square_rectangle xs
getRectangle = [square_rectangle rectangles]

data Triangle = Triangle Float Float Float
x_1 (Triangle x1p _ _ ) = x1p
x_2 (Triangle _ x2p _ ) = x2p
x_3 (Triangle _ _ x3p ) = x3p

triangles = [(Triangle 4 3 5), 
            (Triangle 11 7 12),
            (Triangle 12 20 28)]

square_triangle [] = []
square_triangle (x : xs) = sqrt((x_1 x + x_2 x + x_3 x)*0.5*((x_1 x + x_2 x + x_3 x)*0.5 - x_1 x)*((x_1 x + x_2 x + x_3 x)*0.5 - x_2 x)*((x_1 x + x_2 x + x_3 x)*0.5 - x_3 x)) : square_triangle xs
getTriangle = [square_triangle triangles]
-- ghci 
-- :load lab_4.hs
-- getCircle
-- getRectangle
-- getTriangle


-- В ході виконання лабораторної роботи ознаймлено з класами
-- мови Haskell, також було створено клас, який ідентифікує фігури
-- та визначає їхні площі