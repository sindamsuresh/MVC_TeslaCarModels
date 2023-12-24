//
//  ViewController.swift
//  MVC_TeslaCarModels
//
//  Created by Suresh Sindam on 12/23/23.
//

import UIKit

class CarModelsVC: UIViewController {
    
    var carModelData: [TeslaModel]?
    
    @IBOutlet weak var carModelCV: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        carModelData = TeslaCarModelsData.getTeslaCarModels()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 220)
        carModelCV.collectionViewLayout = layout
    }
}

extension CarModelsVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carModelData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarModelCell.identifier, for: indexPath) as! CarModelCell
        // Use optional binding to unwrap the optional TeslaModel
           if let model = carModelData?[indexPath.row] {
               cell.configure(with: model)
           }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Calculate the width based on the device width minus 20 (10 on each side)
        let cellWidth = collectionView.bounds.width - 20
        let cellHeight = 260.0
        return CGSize(width: cellWidth, height: cellHeight)
    }
}

