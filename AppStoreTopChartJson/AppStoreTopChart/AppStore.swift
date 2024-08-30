import Foundation

struct AppInfo: Codable {
    let appName: String
    let appIcon: String 
    let shortDescription: String
    let rating: Double
    let age: String
    let topChartPosition: Int
    let detailedDescription: String
    let screenshotGallery: [String]
    
    enum CodingKeys: String, CodingKey{
        case appName = "appName"
        case appIcon = "appIcon"
        case shortDescription = "shortDescription"
        case rating = "rating"
        case age = "age"
        case topChartPosition = "topChartPosition"
        case detailedDescription = "detailedDescription"
        case screenshotGallery = "screenshotGallery"
    }
}
