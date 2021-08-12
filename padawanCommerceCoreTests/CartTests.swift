//
//  CartTests.swift
//  padawanCommerceCoreTests
//
//  Created by Diego Veronez Nunes on 08/08/21.
//

import XCTest
import padawanCommerceCore

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
        XCTAssertEqual(sut.getItems().count, 1)
        XCTAssertEqual(sut.getItems().first, item1)
        
    }
    
    func testCart_addTwoItems_ShouldHaveTwoItem() {
        //Arrenge
        let sut = Cart(items: [])
        
        //Act
        sut.addItem(item1)
        sut.addItem(item2)
        
        //Assert
        XCTAssertEqual(sut.getItems().count, 2)
        XCTAssertEqual(sut.getItems().first, item1)
        XCTAssertEqual(sut.getItems().last, item2)

    }
    
    func testCart_removeOneItem_ShouldHaveOneItem() {
        //Arrenge
        let sut = Cart(items: [item1, item2])
        
        //Act
        sut.removeItem(item1)
        
        //Assert
        XCTAssertEqual(sut.getItems().count, 1)
        XCTAssertEqual(sut.getItems().first, item2)

    }
    
    func testCart_removeOneItem_ShouldHaveTwoItem() {
        //Arrenge
        let sut = Cart(items: [item1, item2, item3])
        
        //Act
        sut.removeItem(item2)
        
        //Assert
        XCTAssertEqual(sut.getItems().count, 2)
        XCTAssertEqual(sut.getItems().first, item1)
        XCTAssertEqual(sut.getItems().last, item3)

    }
    
    func testCart_clearAllCart_CarShouldBeEmpty() {
        //Arrenge
        let sut = Cart(items: [item1, item2])
        
        //Act
        sut.clearCart()
        
        //Assert
        XCTAssertTrue(sut.getItems().isEmpty)
    }
}
