//
//  ViewController.swift
//  Music-swift
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit
struct StringData{
    
    let nome: String
    let color:UIColor
    
    
}

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     guard let cell = tableView.dequeueReusableCell(withIdentifier: "StringCell") as? StringTableViewCell else {return UITableViewCell()}
        cell.configure(string : musicList[indexPath.item])
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    let musicList: [StringData] =
    StringData(nome: "Arabella", color: .red),
    StringData(nome: "Save your tears", color: .yellow),
    StringData(nome: "Apple", color: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(StringTableViewCell.self, forCellReuseIdentifier: "StringCell")
    }


}

