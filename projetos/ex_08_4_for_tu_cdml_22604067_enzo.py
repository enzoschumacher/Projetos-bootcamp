# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:35:36 2026

@author: Enzo
"""

n = int(input("Digite o valor de n: "))

H = 0

for i in range(1, n + 1):
    H += 1 / i

print("Valor de H:", H)