# -*- coding: utf-8 -*-
"""
Created on Sun Apr 19 16:29:55 2026

@author: Enzo
"""

import os

contador = 0

for m in range(0, 101):
    if contador % 20 == 0:
        input("Pressione ENTER para continuar")
        os.system('cls')

        print("Conversão metros – pés")
        print("Metros\tPés")

    pes = m / 0.3048
    print(f"{m}\t{pes:.2f}")

    contador += 1