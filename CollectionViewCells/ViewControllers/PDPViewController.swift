//
//  PDPViewController.swift
//  CollectionViewCells
//
//  Created by Mark Struzinski on 4/26/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class PDPViewController: UIViewController, StoryboardInitializable {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var product: Product!
    var coordinator: PDPCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = UINib(nibName: "PDPCollectionViewCell", bundle: Bundle.main)
        collectionView.register(xib, forCellWithReuseIdentifier: "PDPCollectionViewCell")
    }
}

extension PDPViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PDPCollectionViewCell", for: indexPath)
        return cell
    }
}
