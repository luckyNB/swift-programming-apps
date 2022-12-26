import Foundation

//classess

class Dog{
    var name = ""
    var age = 0
    var furColor = ""
    
    func bark(){
        print("Woof! My name is\(name) and I am \(age) years old")
    }
    
}

var myDog = Dog()


myDog.name = "Tommy"
myDog.age = 10
myDog.furColor = "Brow"
myDog.bark()

print(myDog.furColor)
var myDog2 = Dog()
myDog2.name = "Joimmy"
myDog2.age = 20
myDog2.furColor = "White"
myDog2.bark()


// Make a class based off something in the room around you



print(myDog2.name)

class Laptop{
    var serialNo = 0
    var productName = ""
    var price = 0
}

var system = Laptop()
system.productName = "Apple"
system.price = 1000
system.serialNo = 200

print(system.productName)


//Structs


class LaptopStruct{
    var serialNo = 0
    var productName = ""
    var price = 0
    
    
    func bark(){
        print("Woof! My product is \(productName) and It is of  \(price)dollar money")
    }
}

var Lap = LaptopStruct()
Lap.price=1000
Lap.productName = "Apple"
Lap.bark()


struct House{
    var hName = ""
    var address = ""
    var rent = 0
    
    
    func house(){
        print("Woof! My housename is\(hName) and I pay \(rent)   as a rent")
    }
}

var h1 = House()
h1.hName = "Punyai Niwas"
h1.rent = 10000



//Enums

enum Compass{
    case north
    case east
    case west
    case south
}

var direction : Compass = .east

func getDirections(whichWay : Compass){
    if whichWay == .east{
        print("Turn right")
    }
}

getDirections(whichWay: Compass.east)

enum FurColor{
    case Black
    case White
    case Brown
    case Golden
    
}

struct DogEnum{
    var age : Int
    var name : String
    var furColor : FurColor
}
DogEnum(age : 8, name : "Jimmy", furColor : FurColor.Black)


enum Profile{
    case Dev
    case QA
    case BA
    case PM
}

struct Employee{
    var name : String
    var exp : Int
    var profile : Profile
}
var emp1 = Employee(name: "Anirudh", exp: 6, profile: .QA)
var emp2 = Employee(name: "Mala", exp: 10, profile: .Dev)
var emp3 = Employee(name: "Nikunj", exp: 10, profile: .BA)
var emp4 = Employee(name: "Laxman", exp: 3, profile: .PM)
print(emp1.self)
print(emp2)
print(emp3)
print(emp4)


 var ageVal = 50

switch ageVal{
    
case 0...12:
    print("A young child")
    
    
case 12...18:
    print("A Teenager")
default:
    print("Old")
}
