# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:20:03 2026

@author: Enzo
"""

n = int(input("Digite um número inteiro positivo: "))

soma = 0
for i in range(n, -1, -1):
    soma += i

media = soma / (n + 1)

print("Soma:", soma)
print("Média:", media)