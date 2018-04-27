//
//  PLPCoordinator.swift
//  CollectionViewCells
//
//  Created by Mark Struzinski on 4/26/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class PLPCoordinator: Coordinator {
    var navigationController: UINavigationController!
    
    init(withNavController navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let plpVC = PLPViewController.instantiate()
        plpVC.coordinator = self
        navigationController.pushViewController(plpVC, animated: false)
    }
    
    func productWasSelected(forProduct product: Product) {
        let pdpCoordinator = PDPCoordinator(withNavController: navigationController)
    }
}



