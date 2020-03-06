//
//  DataStorage.swift
//  tableview
//
//  Created by adithyasai neeli on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Datastorage
{
    static private let instance = Datastorage()
    private lazy var countries: [Country] = []
    private init(){
    
    }
   static func getInstance() -> Datastorage
    {
        return instance
    }
    func addCountry(country: Country)
    {
        self.countries.append(country)
    }
    func getallcountries() -> [Country]
    {
        return self.countries
    }
    func loadData(){
       //countries.removeAll()
       countries.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "ve")))
       countries.append(Country(name: "India", capital: "Delhi", flag: #imageLiteral(resourceName: "za")))
       countries.append(Country(name: "USA", capital: "Washington", flag: #imageLiteral(resourceName: "zm")))
       countries.append(Country(name: "UK", capital: "London", flag: #imageLiteral(resourceName: "vu")))
       countries.append(Country(name: "Japan", capital: "Tokyo", flag: #imageLiteral(resourceName: "vn")))
     }
}
