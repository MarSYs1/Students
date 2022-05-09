//: [Anterior](@previous)

//:# Operadores


import UIKit
import SwiftUI




//:# 1) Quais são as operadoras disponíveis no Swift?
 
 // Responda
 
//:# Operadores
 
//:# Operadores aritméticos (+,-,*,/,%)

//:# Operadores lógicos (<,>,<=,>=,!=,==)

//:# Operador condicional (?:)

//:# Operadores compostos (+=, -=, *=, /=, %=)

//:# Operador de Nil-Coalescência (??)

//:# Operador de verificação de tipo (é)

//:# Operador de consideração de tipo (como!, como?)

//:# Operadores de identidade (===, !==)

//:# Operadores de alcance
 
//:# Faixa Fechada (1...10)

//:# Faixa semi-aberta (1..<10)

//:# Operadores de alcance unilateral (2..)



//:# 2) Você pode explicar diferentes operadores de alcance no Swift?
 /*Responda
 */

let n: Int = 3

// Closed Range
for i in 0...n {
    print(i) // 0, 1, 2, 3
}

// Half Opened Range
for i in 0..<n {
    print(i) // 0, 1, 2
}

// One Sided Range Operators
let numbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for value in numbers[5...] {
    print(value) // 5, 6, 7, 8, 9, 10
}


//:# 3) O que é operador de identidade no Swift?
 
/* Responda
 
 === e !== são os operadores de identidade em Swift. Isso é usado apenas para tipos de objeto. Em outras palavras, não é usado para tipos de valor.
 */


class A {
    
}

let a1: A = A()
let a2: A = A()
let a3: A = a2

print(a1 === a2) // false
print(a2 === a3) // true, referencing the same memory




//: [Proximo](@next)
