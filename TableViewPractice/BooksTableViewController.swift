//
//  BooksTableViewController.swift
//  TableViewPractice
//
//  Created by 林仲景 on 2023/4/23.
//

import UIKit

class BooksTableViewController: UITableViewController {
    
    
    //通常在製作tableView時，會有一個Array放物件資料，因為Array有順序，可以跟表格的順序互相對照，然後將資料放進表格
    let books = [
        [
            Book(name: "山貓", author: "護玄", introduce: 簡介.第1集, cover: BookCovers.山貓.rawValue),
            Book(name: "水漬", author: "護玄", introduce: 簡介.第2集, cover: BookCovers.水漬.rawValue),
            Book(name: "彩券", author: "護玄", introduce: 簡介.第3集, cover: BookCovers.彩券.rawValue),
            Book(name: "秘密", author: "護玄", introduce: 簡介.第4集, cover: BookCovers.秘密.rawValue),
            Book(name: "失去", author: "護玄", introduce: 簡介.第5集, cover: BookCovers.失去.rawValue),
            Book(name: "不明", author: "護玄", introduce: 簡介.第6集, cover: BookCovers.不明.rawValue),
            Book(name: "雙生", author: "護玄", introduce: 簡介.第7集, cover: BookCovers.雙生.rawValue),
            Book(name: "終結", author: "護玄", introduce: 簡介.第8集, cover: BookCovers.終結.rawValue)
        ],
        
        [
            Book(name: "回家", author: "護玄", introduce: 簡介.第3_1集, cover: BookCovers.回家.rawValue),
            Book(name: "破滅", author: "護玄", introduce: 簡介.第3_2集, cover: BookCovers.破滅.rawValue),
            Book(name: "約定", author: "護玄", introduce: 簡介.第3_3集, cover: BookCovers.約定.rawValue),
            Book(name: "窺視", author: "護玄", introduce: 簡介.第3_4集, cover: BookCovers.窺視.rawValue)
        ]
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 249/255, green: 226/255, blue: 175/255, alpha: 1)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return books.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return books[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BooksTableViewCell.cellIdentifier, for: indexPath) as! BooksTableViewCell
        cell.coverImageView.image = UIImage(named: books[indexPath.section][indexPath.row].cover)
        cell.authorLabel.text = books[indexPath.section][indexPath.row].author
        cell.bookNameLabel.text = books[indexPath.section][indexPath.row].name
        // Configure the cell...

        return cell
    }
    
    
    @IBSegueAction func showDetail(_ coder: NSCoder) -> DetailViewController? {
    
        if let section = tableView.indexPathForSelectedRow?.section,
           let row = tableView.indexPathForSelectedRow?.row{
            return DetailViewController(coder: coder, book:books[section][row] )
        }else{
            return nil
        }
       
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return BookSerius.因與聿案簿錄.rawValue
        }else{
            return BookSerius.案簿錄．浮生.rawValue
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
