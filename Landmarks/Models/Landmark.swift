//
//  LandmarkModel.swift
//  Landmarks
//
//  Created by Harshvardhan Basava on 29/06/21.
//
import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    private var imageName: String
    //computed image property.
    var image: Image{
        Image(imageName)
    }
    
    var featureImage: Image?{
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    //added nested coordinates property using a nested Coordinates type.
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
