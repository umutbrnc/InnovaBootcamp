//
//  Product.swift
//  Homework6
//
//  Created by chvck on 30.09.2024.
//

import Foundation


class Product{
    
    var product_name : String?
    var product_image : String?
    var product_price : String?
    
    
    init(product_name: String, product_image: String, product_price: String) {
        self.product_name = product_name
        self.product_image = product_image
        self.product_price = product_price
    }
}
