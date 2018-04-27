//
//  UIView+Anchors.swift
//  CollectionViewCells
//
//  Created by Struzinski, Mark - Mark on 4/27/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

extension UIView {
    func anchorAllEdgesToSuperview() {
        self.translatesAutoresizingMaskIntoConstraints = false
        addSuperviewConstraint(topAnchor.constraint(equalTo: (superview?.topAnchor)!))
        addSuperviewConstraint(leftAnchor.constraint(equalTo: (superview?.leftAnchor)!))
        addSuperviewConstraint(bottomAnchor.constraint(equalTo: (superview?.bottomAnchor)!))
        addSuperviewConstraint(rightAnchor.constraint(equalTo: (superview?.rightAnchor)!))
    }
    
    func centerInSuperview() {
        self.translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else {
            return
        }
        
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: (superview.centerXAnchor)),
            centerYAnchor.constraint(equalTo: (superview.centerYAnchor))])
    }
    
    func anchorToSuperview(_ attribute: NSLayoutAttribute) {
        addSuperviewConstraint(NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: superview, attribute: attribute, multiplier: 1.0, constant: 0.0))
    }
    
    func addSuperviewConstraint(_ constraint: NSLayoutConstraint) {
        superview?.addConstraint(constraint)
    }
}
