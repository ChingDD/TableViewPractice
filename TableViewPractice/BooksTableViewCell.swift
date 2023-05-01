//
//  BooksTableViewCell.swift
//  TableViewPractice
//
//  Created by 林仲景 on 2023/4/23.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var bookNameLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    static let cellIdentifier = "\(BooksTableViewCell.self)"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
