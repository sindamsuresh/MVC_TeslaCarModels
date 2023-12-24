//
//  TeslaCarModelsData.swift
//  MVC_TeslaCarModels
//
//  Created by Suresh Sindam on 12/23/23.
//

import Foundation
import UIKit

class TeslaCarModelsData {
    static func getTeslaCarModels() -> [TeslaModel] {
        let carModelsArr: [TeslaModel] = [
            TeslaModel(modelName: "Tesla\nModel S", modelImg: "ModelS"),
            TeslaModel(modelName: "Cybertruck", modelImg: "Cybertruck"),
            TeslaModel(modelName: "Model 3", modelImg: "Model3"),
            TeslaModel(modelName: "Roadster", modelImg: "Roadster"),
            TeslaModel(modelName: "Model X", modelImg: "ModelX"),
            TeslaModel(modelName: "Semi", modelImg: "Semi"),
            TeslaModel(modelName: "Model Y", modelImg: "ModelY")
        ]
        return carModelsArr
    }
}
