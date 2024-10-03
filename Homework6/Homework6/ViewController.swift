//
//  ViewController.swift
//  Homework6
//
//  Created by chvck on 30.09.2024.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
 
    var products = [Product]()
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let product1 = Product(product_name: "Latte", product_image: "latte", product_price: "60")
        let product2 = Product(product_name: "Americano", product_image: "americano", product_price: "50")
        let product3 = Product(product_name: "Filtre Kahve", product_image: "filtre", product_price: "50")
        let product4 = Product(product_name: "Mocha", product_image: "mocha", product_price: "65")
        let product5 = Product(product_name: "Iced Latte", product_image: "icedlatte", product_price: "60")
        let product6 = Product(product_name: "Cold Brew", product_image: "iced", product_price: "60")
        let product7 = Product(product_name: "Iced Salted Caramel Latte", product_image: "salted", product_price: "75")
        products.append(product1)
        products.append(product2)
        products.append(product3)
        products.append(product4)
        products.append(product5)
        products.append(product6)
        products.append(product7)
        
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
        
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        design.minimumLineSpacing = 5
        design.minimumInteritemSpacing = 5
        
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth-15)/2
        
        design.itemSize = CGSize(width: itemWidth, height: itemWidth*1.2)
        productsCollectionView.collectionViewLayout = design

        
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductsCollectionViewCell
        let product = products[indexPath.row]
        cell.imgProduct.image = UIImage(named: product.product_image!)
        cell.lblName.text = "  \(product.product_name!)"
        cell.lblPrice.text = "\(product.product_price!) TL"
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor.backgroundd.cgColor
        cell.layer.cornerRadius = 15
        
        return cell
    }

}


