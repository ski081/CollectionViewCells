//
//  ViewController.swift
//  CollectionViewCells
//
//  Created by Mark Struzinski on 4/26/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class PLPViewController: UIViewController, StoryboardInitializable {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var coordinator: PLPCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension PLPViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PLPCell", for: indexPath) as? PLPCollectionViewCell else {
            fatalError("Invalid cell configuration")
        }
        return cell
    }
}

extension PLPViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = Product(description: "Description", price: "$4.00", reviewCount: 10)
        coordinator.productWasSelected(forProduct: product)
    }
}
