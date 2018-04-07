//
//  Observations.swift
//  Field Survey
//
//  Created by Adam Thoma-Perry on 4/6/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import Foundation
import UIKit

enum Classification: String, Codable {
    case amphibian, bird, fish, insect, mammal, plant, reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue)
    }
}

struct Observation: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
    
    static func retrieve() -> [Observation] {
        guard let fileURL = Bundle.main.url(forResource: "field_observations", withExtension: "json") else { return [] }
        
        do {
            let data = try Data(contentsOf: fileURL)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            return try decoder.decode([Observation].self, from: data)
        } catch let error {
            print(error)
            return []
        }
    }
}
