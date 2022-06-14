//
//  Expense.swift
//  Project_7_iExpense
//
//  Created by KARAN  on 14/06/22.
//

import Foundation

class Expenses : ObservableObject {
    @Published var items = [ExpenseItem](){
        didSet {
            
            if let encoded = try? JSONEncoder().encode(items){
                UserDefaults.standard.set(encoded , forKey: "Items")
            }
        }
    }
    
    init(){
        if let saveditem = UserDefaults.standard.data(forKey: "Items"){
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: saveditem){
                items=decodedItems
                return
            }
        }
        items=[]
    }
}
    
