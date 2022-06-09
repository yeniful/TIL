//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/06/09.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


// Adjust the angle in the preview to test the effect of the rotation.
// angle 값을 할당하지 않아도 오류는 안뜸
// 당장 화면을 보여줘여하는 프리뷰에서 오류 뜸

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
