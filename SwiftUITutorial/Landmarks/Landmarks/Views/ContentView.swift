//
//  ContentView.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/04/05.
//

import SwiftUI


//The first structure conforms to the View protocol describes the view’s content and layout.
//body property only returns a single view.
struct ContentView: View {

    var body: some View {
        LandmarkList()
    }
}


//The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
