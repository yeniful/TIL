//
//  Badge.swift
//  Landmarks
//
//  Created by Yeni Hwang on 2022/06/09.
//

import SwiftUI

struct Badge: View {

    var badgeSymbols: some View{
        
        // 회전해서 채우기
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            
            // badge symbol을 geometry로 받은 값을 기준으로 위치 조정
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)

            }            
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
