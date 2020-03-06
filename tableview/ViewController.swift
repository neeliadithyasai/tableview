//
//  ViewController.swift
//  tableview
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
  @IBOutlet weak var tblCountry: UITableView!
  lazy var countries: [Country] = []
   
  override func viewDidLoad() {
    super.viewDidLoad()
    countries = Datastorage.getInstance().getallcountries()
  }
 // func loadCountries(){
//    countries.append(Country(name: "Afghanistan", capital: "Kabul", flag: imageLiteral(resourceName: "af")))
//    countries.append(Country(name: "India", capital: "Delhi", flag: imageLiteral(resourceName: "ae")))
//    countries.append(Country(name: "USA", capital: "Washington", flag: imageLiteral(resourceName: "am")))
//    countries.append(Country(name: "UK", capital: "London", flag: imageLiteral(resourceName: "ao")))
//    countries.append(Country(name: "Japan", capital: "Tokyo", flag: imageLiteral(resourceName: "ag")))
//
//     var countries = ["India","Argentina","Cameroon","Canada","Denmark","USA","UK","France","Germany","Australia","Austria","Nepal","Pakistan","Norway","Finland","Sweden","Portugal","Netherlands","Russia","Japan","China","New Zealand","Slovenia","Slovakia","Poland","Ukraine","Mexico","Afghanistan","Bangladesh","Ireland","Czech","South Korea","North Korea","Qatar"]
//  }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
   
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
   
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countries.count
  }
   
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell")
//    cell?.textLabel?.text = countries[indexPath.row]
    let country = countries[indexPath.row]
    cell?.textLabel?.text = country.name
    cell?.detailTextLabel?.text = country.capital
     
    cell?.imageView?.image = country.flag
     
    return cell!
  }
   
   
}
