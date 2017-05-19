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
        
//        ListTable.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        

//        ListTable.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        ListTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // let cell:TableViewCell = ListTable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell!
        
        let identifier = "cell"
        
        var cell: TableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableViewCell
        
        if cell == nil {
            tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableViewCell
        }
        cell.labelName.text = "Madesan"
        
        cell.labelPhone.text = "097889678665674"
        
        return cell
    }

}

