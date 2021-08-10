//
//  CartTests.swift
//  padawanCommerceCoreTests
//
//  Created by Diego Veronez Nunes on 08/08/21.
//

import XCTest

class Cart{
    
    private(set) var items: [String]
    
    init(items: [String]) {
        self.items = items
    }
    
    func addItem(_ item:String)  {
        items.append(item)
    }
    
    func removeItem(_ item:String){
        guard let ItemIndex = items.firstIndex(of: item) else {
            return
        }
        
        items.remove(at: ItemIndex)
    }
    
    func clearCart(){
        items.removeAll()
    }
}

class CartTests: XCTestCase {
    
    let item1 = "Item 1"
    let item2 = "Item 2"
    let item3 = "Item 3"
    
    func testCart_addOneItem_ShouldHaveOneItem() {
        //Arrenge
        let sut = Cart(items: [])
        
        //Act
        sut.addItem(item1)
        
        //Assert
        XCTAssertEqual(sut.items.count, 1)
        XCTAssertEqual(sut.items.first, item1)
        
    }
    
    func testCart_addTwoItems_ShouldHaveTwoItem() {
        //Arrenge
        let sut = Cart(items: [])
        
        //Act
        sut.addItem(item1)
        sut.addItem(item2)
        
        //Assert
        XCTAssertEqual(sut.items.count, 2)
        XCTAssertEqual(sut.items.first, item1)
        XCTAssertEqual(sut.items.last, item2)

    }
    
    func testCart_removeOneItem_ShouldHaveOneItem() {
        //Arrenge
        let sut = Cart(items: [item1, item2])
        
        //Act
        sut.removeItem(item1)
        
        //Assert
        XCTAssertEqual(sut.items.count, 1)
        XCTAssertEqual(sut.items.first, item2)

    }
    
    func testCart_removeOneItem_ShouldHaveTwoItem() {
        //Arrenge
        let sut = Cart(items: [item1, item2, item3])
        
        //Act
        sut.removeItem(item2)
        
        //Assert
        XCTAssertEqual(sut.items.count, 2)
        XCTAssertEqual(sut.items.first, item1)
        XCTAssertEqual(sut.items.last, item3)

    }
    
    func testCart_clearAllCart_CarShouldBeEmpty() {
        //Arrenge
        let sut = Cart(items: [item1, item2])
        
        //Act
        sut.clearCart()
        
        //Assert
        XCTAssertTrue(sut.items.isEmpty)
    }
}
