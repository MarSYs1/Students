//:# Perguntas e respostas de testes em swift
//:# Tipos de Dados

import Foundation
import SwiftUI



//:#  1) O que é Tipo de Dados? liste alguns tipos de dados em Swift
/* Responda
 Datatype é uma palavra-chave que especifica ao compilador que tipo de valor o identificador declarado pode armazenar.
 Tipos de dados Swift */

// Int
var age: Int = 365
// Float
var weight: Float = 78.50
// Double
var carWeight: Double = 123532524.5423
// Character
var initial: Character = "A"

// String
let name: String = "Paige"
// Bool
let isProfessional: Bool = true
// Array
let evenNumbers: Array = [2, 4, 6, 8, 10, 12, 14, 16]
// Array of Int
let oddNumbers: [Int] = [1, 3, 5, 7, 9, 11]
// Set
let uniqueValues: Set = [1, 2, 3, 4, 5, 6, 7, 8]
// Set of Int
let uniqueValues2: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8]
// Dicionary
let address: Dictionary = [
    "Name": "Paige",
    "City": "Seoul"
]
// Dictionary with [String: Any] Specified
let instructor: [String: Any] = [
    "Name": "Paige",
    "Age": 31,
    "Number": 000000000
]
// Any can contain literally anything
// Qualquer pode conter literalmente qualquer coisa
let any: Any = 10.19



// -------------------------------------------------------------


//:# 2) let vs var? Constante x Variável?

/* Responda
 O valor atribuído à constante não pode ser modificado. Use let para declarar uma constante.
 O valor atribuído à variável pode ser modificado. Use var para declarar variável. */

let imConstant: Int = 3

// imConstant = 4 // Error

var imVariable: Int = 5
print(imVariable) // 5
imVariable = 6
print(imVariable) // 6

// -------------------------------------------------------------------------

//:# 3) O que é Inferência de Tipos?

 /*Responda
O processo do compilador que identifica o tipo de dados de um identificador com base no valor desse identificador. */

var anyInt = 3 // compiler will identify `anyInt` as Int
var anyString = "test" // compiler will identify `anyString` as String


//:# 4) O que é anotação de tipo?
 /*Responda
 O processo de especificar explicitamente o tipo de dados da variável é conhecido como Anotação de Tipo.*/

var imExplicitlyInt: Int = 5
var imExplicitlyString: String = "string"


//:# 5) Como o Swift é uma linguagem segura para tipos?
/* Responda
 Swift é Type Safe Language porque não permite a conversão de tipo implícita.
 Se você declarar como Int e tentar armazenar Double , Swift não permitirá.
 */

// In C Language, Implicit Type Casting is allowed

// int num;

// float Fnum = 123.953;

// num = Fnum;

// printf("%d\n", num); // returns 123.000. This is implicit type casting. In Swift, you cannot do that.

// In Swift, Implicit Type Casting is not allowed

// Note that this is not possible in the first place
var num: Int
var Fnum: Float = 123.953

// num = Fnum // Error
// Correct Way
// num = Int(Fnum)!



//:# 6) O que é tipo de fundição? Me dê um exemplo?
/* Responda
 O processo de conversão de um valor de tipo de dados em outro valor de tipo de dados é conhecido como Typecasting.
 */

// Double to Int
var weight2: Int = 0

var killograms: Double = 84.8

weight2 = Int(killograms)
    
//:# 7) O Swift suporta Typecasting Implícito?
 /* Responda
 Nao
 */

//:# 8) O que é Tupla? Quando usamos Tupla?

/*Responda
 Tuple está agrupando vários valores em uma única variável. Use tupla quando quiser retornar vários valores de um método.
 */


// Tuple Case 1
let info: (String, String, Int) = ("Paige", "Seoul", 32)
print(info.0) // Paige
print(info.1) // Seoul
print(info.2) // 32
// Tuple Case 2 assigning multiple values - Practical Example
let (name2, city, age2) = ("Paige", "Seoul", 32)
print(name2) // Paige
print(city) // Seoul
print(age2) // 32
// Tuple Case 3 key-value, - Practical Example
let infomration: (name2: String, city: String, age2: Int) = (name2: "Paige", city: "Seoul", age2: 32)
print(infomration.name2) // Paige
print(infomration.city) // Seoul
print(infomration.age2) // 32

//:# 9) O que é interpolação de strings?
/*Responda
 O processo de incorporação de valores dentro do objeto String é conhecido como String Interpolation.
 */

let name3: String = "Paige"
let age3: Int = 32

print("Hello, My name is \(name3) and I'm \(age3) years old")
// Hello, My name is Paige and I'm 32 years old

//:# 10) O que é alias de tipo?
/*Responda
 O processo de atribuição de outro nome a um tipo de dados existente é conhecido como Type Aliasing.
 */

typealias Number = Int

let age4: Number = 34

if age4 is Int {
    print("age is obviously int!")
}
// age is obviously int!t


//:#11) Podemos usar a palavra-chave existente como identificador (variável)?
/*Responda
 Usando marcas de tique simples "`"
 */

let `let`: Int = 40
// print(`let`) = 40

//:# 12) "C", é esse Personagem?
/*Responda
 Por padrão, todos os caracteres são Strings. Use a anotação de tipo para considerá-lo como caractere.
 */

// Type is 'String'
let initial1 = "C"

// Type is 'Character'
let initial2: Character = "C"


//:# 13) 10.0 é flutuante?
/* Responda
 Por padrão, todos os valores de ponto flutuante são duplos. Use Type Annoation para considerá-lo como Float.
 */

// Type is 'Double' by default
let distance1 = 10.0

// Type is 'Float' with Type Annotation
let distance2: Float = 10.0





//: [Proximo](@next)
