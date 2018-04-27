//
//  EPCViewController.swift
//  CollectionViewCells
//
//  Created by Struzinski, Mark - Mark on 4/27/18.
//  Copyright © 2018 BobStruzSoftware. All rights reserved.
//

import UIKit

class EPCViewController: UIViewController, StoryboardInitializable {
    var epcContent: EPCContent!

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = epcContent.title
        descriptionLabel.text = epcContent.description
    }
}
