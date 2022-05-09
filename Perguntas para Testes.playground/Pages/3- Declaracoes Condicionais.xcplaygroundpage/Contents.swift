//: [Anterior](@previous)

import Foundation
import SwiftUI


//:# 1) Quais são as declarações condicionais disponíveis no Swift?
 
 /*Responda
 
 if
 if-else
 if-else ladder
 switch
 */

let isAlien: Bool = true

// if
if isAlien {
    print("Alien")
}

// if - else
if isAlien {
    print("Alien")
} else {
    print("Probably Human")
}

// if - else ladder
if isAlien {
    print("Alien")
} else if isAlien != true {
    print("Probably Human")
} else {
    print("What else?")
}

// switch
switch isAlien {
case true:
    print("Alien")
case false:
    print("Probably Human")
}



//:# 2) O que é enumeração rápida em Swift?
 
 /* Responda
 
 Processo de iteração através de todos os elementos de uma coleção de forma eficiente. É mais rápido que o loop for geral.
 */

let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
for number in numbers {
    print(number) //1, 2, 3, 4, 5, 6, 7, 8, 9
}



//:# 3) Qual é a diferença entre 'while' e 'repeat-while loops' em swift?

/* Responda
 
 While é a malha de controle de entrada enquanto do-while é a malha de controle de saída
 malha de controle de entrada versus malha de controle de saída
 */

// Enter Loop
var i: Int = 0

while i < 5 {
    print(i)
    i += 1
}

// Exit Loop
var j: Int = 0

repeat {
    print(i)
    i += 1
} while i < 5



//:# 4) O que é switch case e como declarar um switch rápido?
 
 /* Responda
 
 Switch é uma das instruções condicionais. É uma alternativa à instrução geral if-else ladder.
 */

let input: Int = 10

switch input {
case 0:
    print("Value falls under 0")
case 1...5:
    print("Value falles between 1 to 5")
case 6,7,8,9:
    print("Value falls between 6 to 9")
case 10:
    print("Value is 10")
default:
    print("Not matched anywhere")
}



//:# Aviso
 
/* Você não precisa usar break, mas pode usar a palavra-chave break quando não quiser executar o código.
 Dicas profissionais
 
 Use o switch ao manipular o código de status da rede.
 5) O caso padrão é necessário no caso do Switch do Swift?
 
 Responda
 
 O caso padrão é necessário no caso do switch, caso contrário, você verá a mensagem Switch must be exhasutive.
 */



//:# 6) O que é a palavra-chave Fall-through em swift?
 
/* Responda
 
 O fall-through executa o próximo caso seguido, independentemente da correspondência de caso. Coloque o caso dependente abaixo do caso de queda
 */

let input1: Int = 15

switch input1 {
case 0:
    print("Value falls under 0")
case 11...15:
    print("Value falls between 11 to 15")
    fallthrough
case 9:
    #warning("This line will be executed when value is 11...15!!!")
    print("Value is 9 and this will be executed when value is between 11...15")
case 10:
    print("Value is 10")
default:
    break
}



//: [Proximo](@next)
