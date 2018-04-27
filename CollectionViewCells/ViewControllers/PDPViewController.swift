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
        let xib = UINib(nibName: "ProductInfomationCollectionViewCell", bundle: Bundle.main)
        collectionView.register(xib, forCellWithReuseIdentifier: "ProductInfomationCollectionViewCell")
        let rtfXib = UINib(nibName: "RTFCollectionViewCell", bundle: Bundle.main)
        collectionView.register(rtfXib, forCellWithReuseIdentifier: "RTFCollectionViewCell")
        let epcXib = UINib(nibName: "EPCCollectionViewCell", bundle: Bundle.main)
        collectionView.register(epcXib, forCellWithReuseIdentifier: "EPCCollectionViewCell")
    }
}

extension PDPViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let section = SectionData(rawValue: indexPath.section) else {
            fatalError("Invalid configuration")
        }
        
        switch section {
        case .pdpInfo:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductInfomationCollectionViewCell", for: indexPath)
            return cell
        case .rtf:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RTFCollectionViewCell", for: indexPath)
            return cell
        case .epc:
            let epcContent = EPCContent(title: "Test", description: "Test Description")
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EPCCollectionViewCell", for: indexPath) as? EPCCollectionViewCell else {
                fatalError("Invalid cell configuration")
            }
            cell.configure(withEPCContent: epcContent)
            return cell
        }
    }
}

extension PDPViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        
        let height: CGFloat = indexPath.section == 2 ? 400 : 226
        
        let size = CGSize(width: collectionViewWidth, height: height)
        
        return size
    }
}
