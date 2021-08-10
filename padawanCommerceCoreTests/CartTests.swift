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
    
    func addProduct(_ product:String)  {
        items.append(product)
    }
    
    func removeProduct(_ product:String){
        guard let productToRemoveIndex = items.firstIndex(of: product) else {
            return
        }
        
        items.remove(at: productToRemoveIndex)
    }
    
    func clearCart(){
        items.removeAll()
    }
}

class CartTests: XCTestCase {

    func testCart_addOneProduct_ShouldHaveOneProduct() {
        //Arrenge
        let sut = Cart(items: [])
        
        //Act
        sut.addProduct("Product 01")
        
        //Assert
        XCTAssertEqual(sut.items.count, 1)
        XCTAssertEqual(sut.items.first, "Product 01")
        
    }
    
    func testCart_addTwoProducts_ShouldHaveTwoProduct() {
        //Arrenge
        let sut = Cart(item: [])
        
        //Act
        sut.addProduct("Product 01")
        sut.addProduct("Product 02")
        
        //Assert
        XCTAssertEqual(sut.items.count, 2)
        XCTAssertEqual(sut.items.first, "Product 01")
        XCTAssertEqual(sut.items.last, "Product 02")

    }
    
    func testCart_removeOneProduct_ShouldHaveOneProduct() {
        //Arrenge
        let sut = Cart(item: [])
        
        //Act
        sut.addProduct("Product 01")
        sut.addProduct("Product 02")
        sut.removeProduct("Product 01")
        
        //Assert
        XCTAssertEqual(sut.items.count, 1)
        XCTAssertEqual(sut.items.first, "Product 02")

    }
    
    func testCart_removeOneProduct_ShouldHaveTwoProduct() {
        //Arrenge
        let sut = Cart(item: [])
        
        //Act
        sut.addProduct("Product 01")
        sut.addProduct("Product 02")
        sut.addProduct("Product 02")
        sut.removeProduct("Product 02")
        
        //Assert
        XCTAssertEqual(sut.items.count, 2)
        XCTAssertEqual(sut.items.first, "Product 01")
        XCTAssertEqual(sut.items.last, "Product 02")

    }
    
    func testCart_clearAllCart_CarShouldBeEmpty() {
        //Arrenge
        let sut = Cart(item: [])
        
        //Act
        sut.addProduct("Product 01")
        sut.addProduct("Product 02")
        sut.clearCart()
        
        //Assert
        XCTAssertTrue(sut.items.isEmpty)
    }
}
