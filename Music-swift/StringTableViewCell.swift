//
//  StringTableViewCell.swift
//  Music-swift
//
//  Created by COTEMIG on 24/06/25.
//

import UIKit

class StringTableViewCell: UITableViewCell {
    
  
        func configure(string: String) {
            self.textLabel?.text = string
        }
    


    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

    func configure(string: UITableView)-> Void{
      
    }
}
