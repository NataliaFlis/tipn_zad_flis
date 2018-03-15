library(tidyverse)

#ZADANIE 4-1
?mpg
mpg
View(mpg)
#1.liczba zmiennych: 11
#2.liczba obserwacji: 234
#3.engine displacement - pojemność silnika w litrach
#miles per gallon - spalanie silnika: 1 galon (ok.3,79 litra) na 1 milę
# 
#4.znaczenia zmiennych:
# manufacturer - producent
# Model - Nazwa modelu
# 
# displ - pojemność silnika w litrach
# 
# year - rok produkcji
# 
# cyl - Liczba cylindrów
# 
# trans - rodzaj skrzyni biegów (auto/manual)
# 
# drv - f = napęd na przednie koła, r = napęd na tylne koła, 4 = napęd na 4 koła
# 
# cty - mil miasta na galon (spalanie w mieście)
# 
# hwy - mil na autostradzie na galon (spalanie w trasie)
# 
# fl - typ paliwa
# 
# class - typ samochodu
# 

#ZADANIE 4-2
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = cty)) 

#ZADANIE 4-3
ggplot(data = mpg) +
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "Auta", x = "klasa", y = "ilość samochodów")

#ZADANIE 4-4
ggplot(data = mpg) +
  geom_histogram(mapping  = aes(displ), bins = 10) +
  labs(title = "Auta", x = "pojemność", y = "ilość samochodów")

#ZADANIE 4-5
ggplot(data = mpg, aes(x = class, y = displ)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Auta", x = "klasa", y = "pojemność")








