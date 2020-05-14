//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Office-iMac on 2020-05-14.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    //    MARK: Properties:
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    
    var book: Book?
    
    //    MARK: - StartHere:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    //    MARK: - Functions:
    func updateView() {
        guard let book = book else {return}
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }
    
    //    MARK: - Outlets:
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var genreTextField: UITextField!
    @IBOutlet var lengthTextField: UITextField!
    
       //    MARK: - Actions:
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let length = lengthTextField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
}
