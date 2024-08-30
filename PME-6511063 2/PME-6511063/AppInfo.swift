import Foundation

struct AppInfo: Codable {
    let restaurant: [Restaurant]
    
    enum CodingKeys: String, CodingKey {
        case restaurant = "items"
    }
}

struct Restaurant: Codable{
    let name: String
    let location: String
    let descript: String
    let rating: Double
    let openingTime: String
    let price: String
    let images: [String]
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case location = "location"
        case descript = "description"
        case rating = "rating"
        case openingTime = "openingTime"
        case price = "price"
        case images = "images"
    }
}


