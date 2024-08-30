//
//  AppInfo.swift
//  StudentInfo
//
//  Created by Jilamika on 13/7/2567 BE.
//

import Foundation

struct AppInfo: Codable {
    let name: String
    let age: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
        
    }
    
    struct StudentClass: Codeble {
        let name = "name"
        let age = "age"
    }
}
