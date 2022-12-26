import Foundation

/* Make a function that takes in any text and counts how many words there are total AND list the words from most used to least. Be sre to lowercase everything in th string
 
 
 E*/


func countWords(words : String){
    var text = words.lowercased()
    
    let words = text.components(separatedBy: " ")
    var wordDictionary  : [String:Int] = [:]
    
    for word in words {
        if wordDictionary[word] == nil {
            wordDictionary[word] = 1
        }
        
        else {
            wordDictionary[word] =  wordDictionary[word]! + 1
        }
    }
    print("\(wordDictionary.count)  words")
    
    let sortedWords = wordDictionary.sorted{(word1,word2)-> Bool in
       return word1.value>word2.value
    }
    var rank = 1
    
    for word in sortedWords {
        print("\(rank). \(word.key) - \(word.value)")
        rank = rank+1
    }
    
}

countWords(words: "Hello there friends how are you , I linke to say hello al the time the cahit is grey. is very imp to know which word is used multiple time")
