//
//  BookManager.swift
//  BookManager
//
//  Created by 박성진 on 2017. 9. 6..
//  Copyright © 2017년 박성진. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]()
    
    func addBook(_ bookObject:Book){
        bookList += [bookObject]
    }
    
    func showAllBook() -> String{
        var strTemp = ""
        
        for bookTemp in bookList{
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Gentr : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "------------------------\n"
        }
        return strTemp
    }
    
    func countBook() -> Int{
        return bookList.count
    }
    
    func findBook(_ name:String) -> String?{
        for bookTemp in bookList{
            if bookTemp.name == name{
                var strTemp = ""
                
                for bookTemp in bookList{
                    strTemp += "Name : \(bookTemp.name)\n"
                    strTemp += "Gentr : \(bookTemp.genre)\n"
                    strTemp += "Author : \(bookTemp.author)\n"
                    strTemp += "------------------------\n"
                }
                
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(_ name:String) -> Bool{
        for bookTemp in bookList{
            if bookTemp.name == name{
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                return true
            }
        }
        return false
    }
}

