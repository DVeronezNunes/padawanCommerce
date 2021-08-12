//
//  Cart.swift
//  padawanCommerceCore
//
//  Created by Diego Veronez Nunes on 11/08/21.
//

import Foundation

public final class Cart {
    
    private var items: [String]
    
    public init(items: [String]) {
        self.items = items
    }
    
    public func getItems() -> [String] {
        return items
    }

    public func addItem(_ item:String)  {
        items.append(item)
    }
    
    public func removeItem(_ item:String){
        guard let ItemIndex = items.firstIndex(of: item) else {
            return
        }
        
        items.remove(at: ItemIndex)
    }
    
    public func clearCart(){
        items.removeAll()
    }
}
