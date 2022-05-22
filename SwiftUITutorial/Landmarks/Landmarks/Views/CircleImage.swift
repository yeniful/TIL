//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/04/05.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
//        Add a call to clipShape(Circle()) to apply the circular clipping shape to the image.
//        The Circle type is a shape that you can use as a mask, or as a view by giving the circle a stroke or fill.
        Image("turtlerock").clipShape(Circle()).overlay{
            Circle().stroke(.white, lineWidth: 3)
        }.shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
