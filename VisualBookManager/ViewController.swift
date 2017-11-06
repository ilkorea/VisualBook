//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 박성진 on 2017. 11. 5..
//  Copyright © 2017년 박성진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()       // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "세익스피어"
        
        let book2 = Book()
        book2.name = "햄릿2"
        book2.genre = "비극2"
        book2.author = "세익스피어2"
        
        let book3 = Book()
        book3.name = "햄릿3"
        book3.genre = "비극3"
        book3.author = "세익스피어3"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject){
        //print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()
    }

    @IBAction func addBookAction(_ sender:AnyObject){
        let bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) 도서가 등록되었습니다."
    }
    
    @IBAction func findBookACtion(_ sender:AnyObject){
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil{
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "찾으시는 책이 없습니다."
        }
    }
    
    @IBAction func deleteBookACtion(_ sender:AnyObject){
        let deleteBook = myBook.removeBook(nameTextField.text!)
        if deleteBook == true{
            outputTextView.text = "\(nameTextField.text!) 도서가 지워젔습니다."
        }else{
            outputTextView.text = "책이 없습니다."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

