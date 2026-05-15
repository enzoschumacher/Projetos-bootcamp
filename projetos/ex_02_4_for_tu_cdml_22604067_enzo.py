# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:25:33 2026

@author: Enzo
"""
soma = 0

for i in range(30, 4, -1):
    if i % 3 == 0:
        print(i)
        soma += i

print("Soma:", soma)
