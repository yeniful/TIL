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
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            // offset으로 y축 방향 130만큼 올리고 바텀방향 패딩도 130만큼 올려준다
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
            
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")

            }
            .padding()
            Spacer()
        }
    }
}


//The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
