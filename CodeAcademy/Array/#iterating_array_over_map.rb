# map! íå ïðîñòî èòåðèðóåò, à ïðåîáðàçóåò ýëåìåíòû ìàññèâà
# 
# ê ïðèìåðó åñëè íóæíî âîçâåñòè â ñòåïåíü êàæäûé ýëåìåíò ìàññèâà
# Ìåòîä map C:\Users\gz7n3r\Desktop\PROGS\work\hometask Online Course by Prog School\Lesson2 OOP in Ruby
# 01:01:25

numbers = (5..15).to_a

numbers.map!{ |number| number ** 2 }
puts numbers