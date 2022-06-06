//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/04/05.
//

import SwiftUI


//The @main attribute identifies the app’s entry point.
@main
struct LandmarksApp: App {
    
//    Update the LandmarksApp to create a model instance and supply it to ContentView using the environmentObject(_:) modifier.
    
//    Use the @StateObject attribute to initialize a model object for a given property ⭐️only once⭐️ during the life time of the app. This is true when you use the attribute in an app instance, as shown here, as well as when you use it in a view.
    
    @StateObject var modelData = ModelData()
    
//    The structure’s body property returns one or more scenes
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
