//
//  WhateverCollectionViewCell.swift
//  CollectionViewCells
//
//  Created by Struzinski, Mark - Mark on 4/27/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class EPCCollectionViewCell: UICollectionViewCell {
    @IBOutlet var containerView: UIView!
    
    var epcViewController: EPCViewController!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(withEPCContent epcContent: EPCContent) {
        epcViewController = EPCViewController.instantiate()
        epcViewController.epcContent = epcContent
        
        containerView.addSubview(epcViewController.view)
        epcViewController.view.anchorAllEdgesToSuperview()
    }
}
