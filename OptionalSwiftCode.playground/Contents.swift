import Foundation


//Optional
//var age : Int? = 0
var name : String? = nil
var anaga = 8

var Age = "hello"
//print(Int(Age))


if let age = Int("27"){
   // print(age)
}
//print(age)


//make a functional string optional and if its nil, print "IT IS NIL" and if not print whatever is in String

var value : String? = "Lucky"
func prntOptional(value : String?){
if value == nil {
    print("IT IS NIL")
}else
{
    print(value)
}
}

prntOptional(value: nil)
