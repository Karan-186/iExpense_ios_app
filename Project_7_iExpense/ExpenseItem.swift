//
//  ExpenseItem.swift
//  Project_7_iExpense
//
//  Created by KARAN  on 14/06/22.
//

import Foundation

//what expense will store
//this protocol identifiabke make this struct uniquely identifiable 

struct ExpenseItem : Identifiable , Codable {
    var id = UUID()
    let name : String
    let type : String
    let amount : Double
}
