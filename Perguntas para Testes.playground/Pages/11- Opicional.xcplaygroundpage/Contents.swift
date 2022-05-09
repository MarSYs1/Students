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

/* guard let unwrappedAOptional: Int = aOptionalb else {
    print("optional has no value!")
    // if aOptional has no value, execution code stops here
    return
}

print(unwrappedAOptional) // 15 */



//:# 7) O que é Force unwrapping no Swift?

/*Responda:

Forçar desempacotamento é uma das técnicas opcionais de desempacotamento. Use forçar desempacotamento quando tiver certeza de que a variável opcional contém um valor.
O desempacotamento antecipado não é uma boa prática, o que pode levar a falhas. */

var aOptionnal: Int?

// Crashes occur because aOptional doesn't have any value
print(aOptionnal)



//:# 8) Qual é a diferença entre a ligação opcional e a declaração de guarda?

/*Responda:

A variável que você declara se a instrução let estiver acessível dentro desse bloco de código.
A variável que você declara em guard let é acessível no resto do método. */


var aOpptional: Int?
var bOpptional: Int! // Implicit Optional
aOpptional = 10
bOpptional = 20

if let unwrappedAOptional = aOpptional {
  // only within this block, you can access unwrappedAOptional
    let sum: Int = unwrappedAOptional + bOpptional
    print(sum) // 30
}

// The rest of programs can access unwrappedAOptional.

/* guard let unwrappedAOptional = aOpptinoal else { fatalError("aOptional is nil") }
let summ: Int = unwrappedAOptional + bOpptional
print(summ) // 30 */


//:# 9) Podemos acessar a variável da instrução guard dentro do bloco else?

//Responda:

 // NÃO


/* var aOOptional: Int?
guard let unwrappedAOptional = aOOptinoal else {
  // Compile Error, You can't access variable declared in 'guard' condition
    print(unwrappedAOptional) //Not Possible
    fatalError("aOptional is nil")
} */



//:# 10) É opcional Enum Type ou Struct Type?

/* Responda:

Opcional é um enum. Ele contém os seguintes casos.
Nenhum
algum
 
 */
 
//:# 11) Podemos usar var em uma ligação opcional ou instrução de guarda em vez de let?

/* Responda:

Sim, você pode usar var em vez de let. */


var aOpttional: Int?

if var value = aOpttional {

}

// guard var value = aOpttional else { return }



//:# 12) What is fast enumeration?

/*Answer:

Process of iterating through all elements of a collection in an efficient way. It is faster than general for loop. */


let data: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
for value in data {
}


//:# 13) O que é Encadeamento Opcional?

/*Responda:

O processo que acessa as subpropriedades das variáveis ​​opcionais ou sub propriedades que são novamente opcionais.
let value = optionalProperty?.subOptionalProperty?.subSubOptionalProperty
Se alguma propriedade for opcional, o resultado completo será nulo.*/


struct Store {
    var name: String?
    var brand: Brand?
}

struct Brand {
    var title: String?
    var founded: String?
}

let store: Store? = Store()
// Optional Chaining
store?.brand?.title


//:# 14) Qual é a diferença entre nil e .none?

/*Responda:

Ambos são iguais */

struct Store2 {
    var name: String?
    var brand: Brand?
}

struct brand2 {
    var title: String?
    var founded: String? = .none
}

let store2: Store2? = Store2()

print(store2?.brand?.founded == nil) // true



//:# 15) O que acontece quando você chama um método opcional cujo valor é nil?

/* Responda:

Aplicativo irá travar */

struct Store3 {
    var name: String?
    var brand: Brand!
}

struct brand3 {
    var title: String?
    var founded: String? = .none

  func displayTitle() {
          print(title ?? "no title")
  }

}

let store3: Store3? = Store3()
// Error
// store3?.brand.displayTitle()


//:# 16) O que é o operador de verificação de tipo no Swift?

/*Responda:

“is” é um operador de verificação de tipo */

var someVar: Any = "Hello I am a String"

if someVar is String {
        print(someVar) // Hello I am a String
} else if someVar is Double {
        print("Some value is double") // This won't be printed
}



//:# 17) O que é como?, como! em Swift?

/*Responda:

como? é uma consideração opcional
como! é Consideração Forçada*/


var someVar2: Double = 20.0
var aVar: Int = 10

// Forceful Consideration
let forcefulConsiderationResult: Int = aVar + (someVar2 as! Int)
print(forcefulConsiderationResult) // 30

// Optional Consideration
if let unwrappedSomeVar = someVar2 as? Int {
    let optionalConsiderationResult: Int = aVar + unwrappedSomeVar
    print(optionalConsiderationResult) // 30
}





//: [Proximo - Generico](@next)
