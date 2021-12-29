//
//  main.swift
//  Wormi
//
//  Created by Rand  on 18/05/1443 AH.
//

import Foundation
import Darwin
struct BookName{
    let name: String
}

let Book1 = BookName(name: "1 The Hobbit by J. R. R. Tolkien" )
let Book2 = BookName(name: "2 The Lord of the Rings by J. R. R. Tolkien" )
let Book3 = BookName(name: "3 And then There Were None by Agatha Christie")
let Book4 = BookName(name: "4 The Alchemist by Paulo Coelho")
let Book5 = BookName(name: "5 The Little Prince by Antoine de Saint-Exupéry" )

print("📚Welcome to Rand's Humble Books Library !!📚\n")

var Choose : String!

repeat{
    
    print("""
    __________________________________________
    Tell me what do you want to display by choosing the right number🤔:
    __________________________________________
    
    1.Top Ranked Books⭐️
    2.Recently added Books➕
    3.Bookes Sorted Alphabetically🔤
    4.Quotes✏️
    5.Enter 5 to exit❌
    """ )
    
    print("\nEnter a number : ")
    Choose = readLine()
    
    switch Choose{
        
    case "1" :
        print("_____________________________________________")
        print("⭐️Here are Top Ranked Books⭐️")
        print("_____________________________________________")
        
        print(Book1.name)
        print(Book2.name)
        print(Book3.name)
        print(Book4.name)
        print(Book5.name)
        
        
    case "2" :
        print("_____________________________________________")
        print("➕Here are Recently added Books➕")
        print("_____________________________________________")
        AddBooks()
        
    case "3":
        print("_____________________________________________")
        print("🔤Here are Bookes Sorted Alphabetically🔤")
        print("_____________________________________________")
        PrintSorted()
        
    case "4":
        print("_____________________________________________")
        print("✏️Here are Top Quotes✏️")
        print("_____________________________________________")
        print( PrintQouets())
        
    default:
        
        if(Choose == "5"){
            
            exit(0)
        }else { print("Choose 1, 2, 3 or 4 or press 5 to exit")}
    }
    print("_____________________________________________")
    print("\nPlease press Enter to continue✅")
    print("_____________________________________________")
    readLine()
} while(Choose != "1" || Choose != "2" || Choose != "3" || Choose != "4")


func PrintSorted(){
    var SortedAlph = ["Year 1985 by Anthony Burgess" , "Who Moved My Cheese by Spencer Johnson" , "The Fault in Our Stars by John Green","The Hobbit by J. R. R. Tolkien","The Lord of the Rings by J. R. R. Tolkien", "And then There Were None by Agatha Christie","The Alchemist by Paulo Coelho", "The Little Prince by Antoine de Saint-Exupéry","Catch-22 by Joseph Heller","Invisible Man by Ralph Ellison","Frankenstein by Mary Shelley","Perks of Being A Wallflower by Stephen Chbosky"]
    
    SortedAlph.sort()
    for index  in 0..<SortedAlph.count{
        print(index+1, SortedAlph[index])
    }
}

func AddBooks(){
    
    var RecentlyAdded = ["Year 1985 by Anthony Burgess" , "Who Moved My Cheese by Spencer Johnson" , "The Fault in Our Stars by John Green"]
    
    for index  in 0..<RecentlyAdded.count{
        print(index+1, RecentlyAdded[index])
    }
    print("""
          _____________________________________________
          Do you Want to Add a new Book?🤔➕
          🛑 Press 1 for yes or 2 for no
          
          """)
    let WantOrNot = Int (readLine()!)
    
    if (WantOrNot == 1 ){
        print("📖Enter the book's name📖")
        let NewBook : String! = readLine()
        RecentlyAdded.append(NewBook)
        print("_____________________________________________")
        print("➕Recently Added Books Updated➕")
        print("_____________________________________________")
        
        for index  in 0..<RecentlyAdded.count{
            print(index+1, RecentlyAdded[index])
        }
    } else if(WantOrNot == 2){
        
    }
}

func PrintQouets()-> String{
    return  """
\"It's the possibility of having a dream come true that makes life interesting\" \n- 📚The Alchemist by Paulo Coelho📚\n\n
\"Anything worth dying for is certainly worth living for\" \n- 📚Catch-22 by Joseph Heller📚\n\n
\"When I discover who I am, I'll be free\" \n- 📚Invisible Man by Ralph Ellison📚\n\n
\"Beware; for I am fearless, and therefore powerful\"\n - 📚Frankenstein by Mary Shelley📚\n\n
\"It is only with the heart that one can see rightly; what is essential is invisible to the eye\"\n - 📚The Little Prince by Antoine de Saint-Exupéry📚\n\n
\"We accept the love we think we deserve\"\n - 📚Perks of Being A Wallflower by Stephen Chbosky📚\n\n
"""
}
