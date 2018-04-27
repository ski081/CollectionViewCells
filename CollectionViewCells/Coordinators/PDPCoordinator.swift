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
    
    init(withNavController navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let pdpVC = PDPViewController.instantiate()
        pdpVC.coordinator = self
        navigationController.pushViewController(pdpVC, animated: true)
    }
}
