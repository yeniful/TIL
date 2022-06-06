//
//  Landmark.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/05/22.
//

import Foundation
import SwiftUI
import CoreLocation


//The Landmark data already has the id property required by Identifiable protocol
//you only need to add a property to decode it when reading the data.

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
