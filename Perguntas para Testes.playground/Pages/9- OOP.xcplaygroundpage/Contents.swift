//: [Anterior](@previous)

//:# OOP

//:# 1- O que são os Princípios Orientados a Objetos (OOPs)?

// Responda:

//:# Aula - Class
//:# Objeto  - Object
//:# Encapsulamento - Encapsulation
//:# Herança  - Inheritance
//:# Abstração  - Abstraction
//:# Polimorfismo  - Polymorphism



import Foundation
import SwiftUI


//:# 2- O que é classe? Como declará-lo?

/*Responda:

Classe é um Blueprint ou Modelo / Estrutura Lógica / Esqueleto para criar Objetos
A classe não possui nenhuma memória. Uma vez que a classe é criada, podemos criar qualquer número de objetos dessa classe. */


class TV {

    var model: Int = 2023

    func start() {

    }

    func changeChannel() {

    }

}


//:# 3- O que é Instância/Objeto?

/*Responda:

Object é uma instância de uma classe.
Object é uma implementação física ao vivo da classe.
Coleção de Propriedades e Métodos. */

class Example {

    // Properties
    var var1: String = ""
    var var2: String = ""

    // Methods
    func method1() {}
    func method2() {}

}

// instance, Object
let object: Example = Example()


//:# 4) O que é Propriedade?

/* Responda:

Propriedades são membros de instância de uma Classe/Estrutura que armazena informações sobre essa Classe/Estrutura */

class ExampleClass {

    // Properties, Instance Members
    var var1: String = ""
    var var2: String = ""

    // Methods, Instance Members
    func method1() {}
    func method2() {}

}

// instance, Object
let object: ExampleClass = ExampleClass()

struct ExampleStruct {

    // Properties, Instance Members
    var var1: String = ""
    var var2: String = ""

    // Methods, Instance Members
    mutating func method1() {
        var1 = "Hell World"
    }
    func method2() {}

}



//:# 5) Quais são os 4 tipos de Propriedades?

// Responda:

//:#Propriedades armazenadas

//:#Propriedades computadas

//:#Propriedades preguiçosas

//:#Propriedades Estáticas / Tipo


class Person {

        // Stored Properties
        let firstName: String = "Paige"
        let lastName: String = "Shin"

        // Computed Properties
        var fullName: String {
            get {
                return "\(firstName), \(lastName)"
            }
        }

        // Lazy Properties
        lazy var hasGirlfriend: Bool = {
            return true
        }()

        // Static Properties
        static let Nationality: String = "Korea"

        // Type Properties
        class var age: Int = 32

}


//:# 6- O que é Propriedade armazenada?

/*Responda:

Uma propriedade que possui valor direto é conhecida como Propriedades da Loja.*/

class Person2 {

        // Stored Properties
        let firstName: String = "Paige"
        let lastName: String = "Shin"

}




//:# 7) O que é Propriedade Computada?

/*Responda:

O valor da propriedade computada é calculado ao ser acessado e o valor da propriedade computada depende das demais propriedades da Classe/Estrutura.*/

class Person3 {

        // Stored Properties
        let firstName: String = "Paige"
        let lastName: String = "Shin"

        // Computed Properties
        var fullName: String {
                return "\(firstName), \(lastName)"
        }

}


//:# 8- O que é Propriedade Estática ou Propriedade Tipo? Como declará-los?

/*Responda:

Propriedades de tipo são propriedades de nível de classe cuja memória será alocada apenas uma vez.
Acesse as propriedades do tipo usando ClassName.typePropertyName */

class Person4 {

        // Type & Static Properties
        static let Nationality: String = "Korea"

}

print(Person4.Nationality) // Korea


//:# 9) O que é propriedade preguiçosa?

/*Responda:

Uma propriedade cuja memória será alocada quando a variável for realmente utilizada.*/

class TV2 {

    lazy var logo: String = "Apple"

}

let tv: TV2 = TV2()
print(tv.logo) // memory is allocated when called


//:# 10) palavra-chave estática vs palavra-chave de classe

/*Responda:

static é usado para declarar propriedades de tipo e métodos de tipo em estruturas e classes.
A palavra-chave class é usada apenas em Classes para criar métodos de tipo, mas não em Propriedades de tipo. */

class PerSon {

    // Class Properties are not allowed..
    #warning("Compile Error")
    class var bloodType: String = "A"

        // Work around..
        class var born: Int {
            return 1991
        }

    // Works!
    class func sayMyName() {

    }

}



//:# 11) O que são Observadores de Propriedade?

/*Responda:

willSet e didSet são os observadores de propriedade.
Esses blocos são acionados quando há uma alteração no valor.*/

class PersonB {

 var age: Int? {
      willSet {
          print("Age is about to change: \(newValue)")
     }
     didSet {
         print("Age is changed: \(oldValue)")
     }
 }

}

let person: PersonB = PersonB()
person.age = 30
// Age is about to change: Optional(30)
// Age is changed: nil
// A idade está prestes a mudar: Optional(30)
// A idade foi alterada: nil
person.age = 31
// Age is about to change: Optional(31)
// Age is changed: Optional(30)

// A idade está prestes a mudar: Optional(31)
// A idade foi alterada: Opcional(30)


//:# 12) O que é obter e definir? Como declarar a propriedade get only ou set?

/*Responda:

O acesso de leitura e gravação de uma propriedade pode ser declarado usando as palavras-chave get e set.
Você pode acessar o valor da propriedade get only, mas não pode definir o valor.
Uma propriedade deve conter pelo menos get. */


class PersonC {

 var age = 0
 var days: Int {
        get {
            return age * 365
        }
 }

}

let personn: PersonC = PersonC()
personn.age = 5
print(personn.days) // 1825

// Compile Error.. because it's declared with get only
personn.days = 3000


class PersonD {

 var age = 0
 var days: Int {
        get {
            return age * 365
        }
        set {
            age = newValue / 365
        }
 }

}

let persoon: PersonD = PersonD()
persoon.age = 5
print(persoon.days) // 1825

persoon.days = 3000
print(persoon.days) // 2920



//:# 13) Can a property has only setter(set)?

/*Answer:

No, Every property must contain a getter. We can declare get only property but not set only property. */



//:# 14) Diferença entre Classe vs Estruturas?

/*Responda:

Estruturas são tipos de valor.
As classes são tipos de referência.
Estruturas não suportam herança.
classes suportam herança.
As estruturas não suportam desinicializadores. (definir)
As classes suportam desinicializadores.
As estruturas não seguem a contagem de referência.
As classes seguem a contagem de referência.
Mutating Keyword é necessário para modificar os valores de propriedade nos métodos de instância do Structure.
Não há necessidade de alterar a palavra-chave para modificar o valor da variável de classe.*/



//:# 15) O que é Encapsulamento? Exemplo? Vantagens?

/*Responda:

Encapsulamento é o processo de vincular variáveis/propriedades de instância e métodos em uma única unidade.
Classe é um exemplo de encapsulamento. */

//:# 16) What is Inheritance?

/*Answer:

Deriving a class from another class or extending the functionality of a class by subclassing is known as Inheritance. */


//:# 17) Quais são as vantagens da Herança?

/*Responda:

Reutilizando a funcionalidade existente.*/


//:# 18) O que é Polimorfismo?

/*Responda:

Polimorfismo é a capacidade de aparecer em muitas formas.
Existem dois tipos de polimorfismo: */

//:#1-Polimorfismo Estático / Sobrecarga

//:#2-Polimorfismo Dinâmico / Sobreposição


//:# 19) O que é Polimorfismo Dinâmico / Sobreposição?

/*Responda)

No relacionamento de herança, ter o mesmo método com o mesmo nome com diferença de implementação em subclasse e superclasse é conhecido como Overriding/Polimorfismo Dinâmico.*/

class PersonM {

 func run() {
     print("Running with speed of 10")
 }

}

class Man: PersonM {

 // Dynamic Polymorphism
 override func run() {
            //super.run() => this will run Person::class.run()
     print("Running with speed of 10")
 }

}


//:# 20) O que é Polimorfismo Estático / Sobrecarga?

/*Responda)

Em uma classe com vários métodos com o mesmo nome, mas diferentes em
número de parâmetros (ou)
Ordem dos Parâmetros (ou)
Tipo de Parâmetros */

class PersonNY {

 func run() {
     print("Running with speed of 10")
 }

 // Overloading
 func run(speed: Int) {
     print("Running with \(speed)")
 }

 // Overloading
 func run(speed: Float) {
         print("Running with \(speed)")
 }

 // Overloading
 func run(speed: Int, weight: Float) {

 }

 // Overloading
 func run(speed: Float, weight: Float) {

 }

}



//:# 21) O que é Abstração? Como alcançá-lo?

/*Responda:

A abstração é o processo de ocultar funcionalidades desnecessárias e expor as funcionalidades necessárias.
A abstração pode ser obtida usando especificadores de acesso. */


//:# 22) O swift suporta heranças múltiplas?

/*Responda:

Não, use protocolos para obter herança múltipla.*/


//:# 23) Como chamar um método com algum atraso?

/*Responda:

self.perform(#selector(methodName), com nil, afterDelay: 5.0)
Fila de Despacho - DispatchQueue

 */


class Pessoa: NSObject {

  func executeSomeMethod() {
        self.perform(#selector(callAfter5Seconds), with: nil, afterDelay: 5)
    }

  @objc func callAfter5Seconds() {

    }

}


class Pessoa2 {

  func executeSomeMethod() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.callAfter5Seconds()
        }
    }

  func callAfter5Seconds() {

    }

}




//:# 24) O que é a classe Base/Raiz no Swift?

/*Responda:

Swift não tem classe base como em Objective-C.
As classes podem ser criadas sem nenhuma classe base/classe pai. Nesses casos, a própria classe atual é a classe base.
Se uma classe é derivada de qualquer classe, então a superclasse é sua classe base.*/


//:# 25) O que são palavras-chave self e super?

/* Responda:

self e super são palavras-chave usadas em métodos de instância de uma classe.
self refere-se ao objeto de classe atual no qual o método está presente. Para referenciar as propriedades e métodos da classe atual, use self.
super refere-se ao objeto de classe Pai da classe atual. Para referenciar suas propriedades e métodos da classe Parent, use super. */


class Pessoa3 {

  var age: Int
    var name: String

    init(age: String, name: String) {
    self.age = age
    self.name = name
  }

  func sayMyName() {
            print("\(self.name)")
    }

  func printMyInfo() {
      self.sayMyName()
      print("and I'm \(self.age)")
  }

}

class Woman: Pessoa3 {

  override func sayMyName() {
        super.sayMyName()
  }

}


//:# 26) Podemos conseguir Overriding sem herança?

/*Responda:

Não, a substituição precisa de pelo menos duas classes e essas duas devem estar no relacionamento de herança. */


//:# 27) Quando você prefere struct sobre classe?

/* Responda:

No Swift, structs e classes fornecem valor e construções baseadas em referência para seus objetos.
struct é preferível para objetos projetados para armazenamento de dados como Array.
struct também ajuda a remover problemas de memória ao passar objetos em um ambiente multithread.
class, ao contrário de struct, suporta herança e é mais usado para conter lógica como UIViewController.
A maioria dos objetos de dados de biblioteca padrão em Swift, como String, Array, Dictionary, Int, Float, Boolean, são todos structs, portanto objetos de valor. */




//: [Proximo](@next)
