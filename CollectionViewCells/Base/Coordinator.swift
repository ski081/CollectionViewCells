//
//  Coordinator.swift
//  CollectionViewCells
//
//  Created by Mark Struzinski on 4/26/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController! { get set }
    func start()
}
