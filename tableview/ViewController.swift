//
//  ViewController.swift
//  tableview
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblcountry: UITableView!
    lazy var countries : [country] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func loadCountries(){
        
        country.append
    }
   
}
extension ViewController: UITableViewDataSource, UITableViewDelegate
   
{
   
    func numberofsections(in tableview: UITableView) -> Int
       {
           return 1
           
       }
    func tableView(_ table: UITableView, numberOfRowsInSection section: Int) -> Int {
           return countryNames.count
           
       }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell")
        cell?.textLabel?.text = countryNames[indexPath.row]
        return cell!
       }
   
}
