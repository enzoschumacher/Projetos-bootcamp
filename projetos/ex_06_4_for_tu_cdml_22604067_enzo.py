# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:32:11 2026

@author: Enzo
"""

num = int(input("Digite um número inteiro: "))

soma = 0
temp = abs(num)

for digito in str(temp):
    soma += int(digito)

print("Número:", num)
print("Soma dos algarismos:", soma)
