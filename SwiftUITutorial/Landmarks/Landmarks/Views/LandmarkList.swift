//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/05/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
