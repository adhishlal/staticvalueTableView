//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Adhish on 19/05/17.
//  Copyright © 2017 Adhish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var ListTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ListTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    var items:[String] = ["Adhish","Adhish 2","Adhish 3","Adhish","Adhish 2","Adhish 3","Adhish","Adhish 2","Adhish 3","Adhish","Adhish 2","Adhish 3"]
    var phone:[String] = ["8447251759","8447251755","8447251756","8447251759","8447251755","8447251756","8447251759","8447251755","8447251756","8447251759","8447251755","8447251756"]
    
    var logoImage: [UIImage] = [
        UIImage(named: "me.jpg")!,
        UIImage(named: "me2.jpg")!,
        UIImage(named: "me3.jpg")!,
        UIImage(named: "me.jpg")!,
        UIImage(named: "me2.jpg")!,
        UIImage(named: "me3.jpg")!,
        UIImage(named: "me.jpg")!,
        UIImage(named: "me2.jpg")!,
        UIImage(named: "me3.jpg")!,
        UIImage(named: "me.jpg")!,
        UIImage(named: "me2.jpg")!,
        UIImage(named: "me3.jpg")!,
    ]

    
    //This method actually gives the height that we have defined in our xib file
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }

    //Method for row count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // let cell:TableViewCell = ListTable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell!
        
        let identifier = "cell"
        
        var cell: TableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableViewCell

        if cell == nil {
            tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? TableViewCell
        }
      

            cell.labelName.text = "\(items[indexPath.row])\n"
            cell.labelPhone.text = "\(indexPath.row):: \(phone[indexPath.row])"
            cell.profileImage.image=logoImage[indexPath.row]
        
        
        
        return cell
    }

}

