import Foundation
 
func hello(person : String){
    
    print("Hello:::\(person)!")
}

hello(person: "Laxman")
hello(person: "KL")
hello(person: "VVs")


func addTwoNumbers(num : Int,num2 : Int) -> Int {
    print(num,num2)
    return num+num2
}

var result = addTwoNumbers(num: addTwoNumbers(num: 10, num2: 20), num2: addTwoNumbers(num: 10, num2: 20))

//make a functions that take an Int and Strng and prints the string as an times as the int is

func printStrings(num:Int,Value:String){
    for _ in 1...num {
        print(Value)
    }
}
printStrings(num: 10, Value: "Laxman")
