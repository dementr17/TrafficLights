//
//  ColorCircle.swift
//  Traffic Lights
//
//  Created by Дмитрий Чепанов on 15.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double

    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1.0)
    }
}
