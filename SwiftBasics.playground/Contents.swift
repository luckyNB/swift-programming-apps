import Foundation

//tuples and sets
var dog : (String,Int) = ("Fido",8)

dog.0

var luckyNo : Set = [21,34,21,45,65,43,6532,56,79]
luckyNo.insert(007)
luckyNo.insert(21)
luckyNo.contains(45)


var favFood : Set = ["Jilebi","Dosa","Mutton","Chicken","Biryani"]
favFood.insert("Pizza")
favFood.insert("Dosa")


//Dictionaries

var nickWords : [String:String] = ["zabang" : "whn you finally get your code right","hooha":"when you are coding for 3 hrs and stil can't find out what's wrong"]

nickWords["hooha"]

var dogs = ["Fido":5,"Jane":8,"sean":4]
dogs["Jane"]

dogs.removeValue(forKey: "Jane")
dogs


//Create dictionary for something arround you

var domesticeUtensils = [1:"Cup",2: "freege",3:"TV",4:"INTERNET",5: "Fan"]

domesticeUtensils.removeValue(forKey: 3)

domesticeUtensils
