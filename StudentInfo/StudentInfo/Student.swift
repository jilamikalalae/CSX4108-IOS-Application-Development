//
//  Student.swift
//  StudentInfo
//
//  Created by Jilamika on 18/7/2567 BE.
//

import Foundation

struct StudentList: Codable {
    let uni: String
    let students: [Student]
    
    enum CodingKeys: String, CodingKey{
        case students = "Students"
        case uni = "uni"
    }
}

struct Student: Codable {
    let name: String
    let age: Int
    let address: Address

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
        case address = "address"
    }
}

struct Address: Codable {
    let province: String
    let district: String
    
    enum CodingKeys: String, CodingKey {
        case province = "province"
        case district = "district"
    }
}
