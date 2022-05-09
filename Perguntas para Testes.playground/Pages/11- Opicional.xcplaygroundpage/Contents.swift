//: [Anterior](@previous)

//:# Opicional

import Foundation
import SwiftUI


//:# 1) O que é Opcional e Como declarar um Opcional?

/*Responda:

Opcional é uma variável que é capaz de manter um valor ou ausência de um valor (ou seja, nil) */

var aOptional: Int?
aOptional = nil
var bOptional: Int!

// Compile Error
//var geneal: Int = nil


//:# 2) O que é desempacotamento opcional e quais são as diferentes maneiras de desembrulhar opcionais?

/*Responda:

Extrair o valor subjacente de uma Variável Opcional é chamado de Desempacotamento Opcional.
Forçar desempacotamento (!)
Encadernação opcional
Declaração de guarda
Nil Operador de Coalescência (??) */


//:# 3) O que é desempacotamento implícito e como declarar o desempacotamento implícito opcional? Quando você declara uma variável opcional implícita?

/*Responda:

Processo de transmitir ao compilador que a variável deve conter um valor antes de ser usada. */

var aOptionall: Int?
var bOptionall: Int! // Implicit Optional
bOptionall = 10

// Force Unwrapping
let sum: Int = aOptionall! + bOptionall


//:# 4) O que é encadernação opcional?

/*Responda:

A Ligação Opcional é uma das técnicas de desempacotamento opcionais. */

var aOptionall2: Int?
var bOptional2: Int! // Implicit Optional
aOptionall2 = 10
bOptional2 = 20

// aOptional is unwrapped with Optional Binding
if let unwrappedAOptional = aOptionall2 {
    print(aOptionall2! + bOptional2) // 30
} else {
    print("Optional has no value")
}




//:# 5) O que é?? em Swift?

/*Responda:

?? é o operador nil-coalescing, que ajuda a fornecer um valor padrão se a variável opcional não tiver valor ao desempacotar
deixe valor = opcional ?? Valor padrão */


var aOptionaal: Int?

// if aOptional has no value, its default value is set to 0
print(aOptionaal ?? 0) // 0



//:# 6) O que é declaração de guard?

/*Responda:

Certifique-se de que alguma condição deve ser atendida
Você pode usar a instrução guard para desempacotar a variável opcional */


var aOptionalb: Int?
aOptionalb = 15

guard let unwrappedAOptional: Int = aOptionalb else {
    print("optional has no value!")
    // if aOptional has no value, execution code stops here
    return
}

print(unwrappedAOptional) // 15  


//: [Proximo - Generico](@next)
