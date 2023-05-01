//
//  DetailViewController.swift
//  TableViewPractice
//
//  Created by 林仲景 on 2023/4/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var introTextView: UITextView!
    
    //會先宣告一個為該型別的物件來儲存第一頁送過來的東西
    let book:Book
    
    init?(coder: NSCoder,book: Book) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coverImageView.image = UIImage(named: book.cover)
        introTextView.text = book.introduce
        view.backgroundColor = UIColor(red: 249/255, green: 226/255, blue: 175/255, alpha: 1)
        introTextView.backgroundColor = UIColor(red: 208/255, green: 184/255, blue: 168/255, alpha: 1)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
