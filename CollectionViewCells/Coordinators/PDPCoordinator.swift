//
//  PDPCoordinator.swift
//  CollectionViewCells
//
//  Created by Mark Struzinski on 4/26/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class PDPCoordinator: Coordinator {
    var navigationController: UINavigationController!
    let product: Product
    
    init(withNavController navController: UINavigationController, product: Product) {
        self.navigationController = navController
        self.product = product
    }
    
    func start() {
        let pdpVC = PDPViewController.instantiate()
        pdpVC.coordinator = self
        pdpVC.product = product
        navigationController.pushViewController(pdpVC, animated: true)
    }
}
