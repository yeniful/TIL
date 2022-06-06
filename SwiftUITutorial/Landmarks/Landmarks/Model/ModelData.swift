//
//  ModelData.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/05/22.
//

import Foundation
import Combine

// An observable object is a custom object for your data that can be bound to a view from storage in SwiftUI’s environment. SwiftUI watches for any changes to observable objects that could affect a view, and displays the correct version of the view after a change.

// Declare a new model type that conforms to the ObservableObject protocol from the Combine framework.
// SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes.

final class ModelData: ObservableObject {
    
//    An observable object needs to publish any changes to its data, so that its subscribers can pick up the change.
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}



func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    // filename 없을 때 error
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // load 안될 때 error
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // 파싱 안될 때 error
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
