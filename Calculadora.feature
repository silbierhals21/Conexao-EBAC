            #language: pt

            Funcionalidade: Calculadora
            Como preciso faciliatar minha vida
            Quero usar a calculadora do sistema
            Para somar dois numeros

            Contexto:
            Dado que eu acesse a calculadora

            Cenario: Soma de dois números
            Quando eu digitar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de dois números
            Quando eu digitar <valor1> com <valor2>
            Então o resultado deve ser o <total>

            | numero 1 | numero 2 | soma      |
            | "2"      | "2"      | "4"       |
            | "4"      | "4"      | "8"       |
            | "5"      | "5"      | "10"      |
            | "5"      | "6"      | "11"      |
            | "6"      | "6"      | "12"      |
            | "6"      | "7"      | "13"      |
            | "7"      | "7"      | "14"      |
            | "100"    | "150"    | "250"     |
            | "1000"   | "2500"   | "3500"    |
            | "2000"   | "2000"   | "4000"    |
            | "20000"  | "20000"  | "40000"   |
            | "500000" | "500000" | "1000000" |
            | "30000"  | "30000"  | "60000"   |
            | "4000"   | "4000"   | "8000"    |
            | "900"    | "900"    | "1800"    |
            | "123"    | "456"    | "579"     |
            | "21      | "12"     | "33"      |
            | "11"     | "11"     | "22"      |
            | "9"      | "100"    | "109"     |
            | "5"      | "25"     | "30"      |
            | "10"     | "10"     | "20"      |
