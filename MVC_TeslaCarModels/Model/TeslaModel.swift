//
//  TeslaModel.swift
//  MVC_TeslaCarModels
//
//  Created by Suresh Sindam on 12/23/23.
//

import Foundation
import UIKit


struct TeslaModel {
    // Properties of the TeslaModel struct
    let modelName: String  // Name of the Tesla model
    let modelImg: String?  // Optional string representing the image name
    
    // Computed property for obtaining a UIImage from the image name
    var image: UIImage? {
        // Using flatMap to create a UIImage from the optional modelImg
        // If modelImg is nil, returns nil; otherwise, creates a UIImage
        return modelImg.flatMap(UIImage.init(named:))
    }
}
