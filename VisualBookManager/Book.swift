//
//  Book.swift
//  BookManager
//
//  Created by 박성진 on 2017. 9. 6..
//  Copyright © 2017년 박성진. All rights reserved.
//

import Foundation

class Book{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
        
    }
}
