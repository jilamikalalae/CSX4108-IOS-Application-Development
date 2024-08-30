//
//  abacPlace.swift
//  self-study
//
//  Created by Jilamika on 17/8/2567 BE.
//

import Foundation

struct AbacLocationClass: Codable {
    let abacPlace: [Abac]
    
    enum CodingKeys: String, CodingKey {
        case abacPlace = "Places"
    }
}
    struct Abac: Codable {
        let FacultyName: String
        let Abbreviation: String
        let ImageLogoName: String
        let LocationLat: Double
        let LocationLong: Double
        
    enum CodingKeys: String, CodingKey {
            case FacultyName = "FacultyName"
            case Abbreviation = "Abbreviation"
            case ImageLogoName = "ImageLogoName"
            case LocationLat = "LocationLat"
            case LocationLong = "LocationLong"
        }
}
