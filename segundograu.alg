Algoritmo "segundograu"
Var
   a, b, c: Inteiro
   delta: Real
   x1, x2: Real
Inicio
        Escreval ("Equacao do Segundo Grau")
        Escreval ("-----------------------")
        Escreva ("Informe o valor de A: ")
        Leia (a)
        Escreva ("Informe o valor de B: ")
        Leia (b)
        Escreva ("Informe o valor de C: ")
        Leia (c)
        Escreval ("-----------------------")
        Escreval ("Sua equacao e: ",a, "x2 +", b, "x +", c , " =0")
        delta := (b*b) -4*a*c
        Escreval ("Valor de Delta: ", delta:4:2)
        Escreval ("-----------------------")
        Se (delta < 0) entao
           Escreval ("Para Delta negativo, nao existem raizes Reais")
        senao
             se (delta = 0) entao
                x1 := (-b + raizQ(delta))/(2*a)
                Escreval ("Para Delta positivo. Raizes diferentes: ")
                Escreval ("x' = ", x1:4:2)
                Escreval ("x'' = ", x2:4:2)
             FimSe
        FimSe
        
Fimalgoritmo
