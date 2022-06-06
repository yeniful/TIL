//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/05/22.
//

import SwiftUI

struct LandmarkList: View {
    
//    add an @EnvironmentObject property declaration to the view, and an environmentObject(_:) modifier to the preview.
//    The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent.
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach (filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label : {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
//        You can change the preview device by calling the previewDevice(_:) modifier method.
//        LandmarkList()
//        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation"))

        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
//            Use the previewDisplayName(_:) modifier to add the device names as labels for the previews.
                .previewDisplayName(deviceName)
            
        }
    }
}
