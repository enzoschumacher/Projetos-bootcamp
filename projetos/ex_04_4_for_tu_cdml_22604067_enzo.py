# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:28:12 2026

@author: Enzo
"""

import os

contador = 0

for f in range(-50, 51):
    if contador % 25 == 0:
        input("Pressione ENTER para continuar")
        os.system('cls')

        print("CONVERSAO FAHREINHEIT – CELSIUS")
        print("CELSIUS\tFAHREINHEIT")

    c = (5/9) * (f - 32)
    print(f"{c:.2f}\t{f}")

    contador += 1