//
//  StringTableViewCell.swift
//  Music-swift
//
//  Created by COTEMIG on 24/06/25.
//

import UIKit

class StringTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

    func configure(string: UITableView)-> Void{
        self.text = string
    }
}
