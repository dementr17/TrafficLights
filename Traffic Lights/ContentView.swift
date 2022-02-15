//
//  ContentView.swift
//  Traffic Lights
//
//  Created by Дмитрий Чепанов on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var title = "START"
    @State var opacity = 0.3
//    var color: Color
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: opacity)
                ColorCircle(color: .yellow, opacity: opacity)
                    .padding()
                ColorCircle(color: .green, opacity: opacity)
                Spacer()
                Button(action: {buttonTapped()}) {
                        Text(title)
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 150, height: 60)
                            .foregroundColor(.blue)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.white, lineWidth: 5)
                                    )
                    }
                .padding()
            }
        }
    }
    
    private func buttonTapped() {
        if title == "START" {
            title = "NEXT"
        }
//    }
//
//        switch currentLight {
//        case .red:
//            greenLight.alpha = lightIsOff
//            redLight.alpha = lightIsOn
//            currentLight = .yellow
//        case .yellow:
//            redLight.alpha = lightIsOff
//            yellowLight.alpha = lightIsOn
//            currentLight = .green
//        case .green:
//            greenLight.alpha = lightIsOn
//            yellowLight.alpha = lightIsOff
//            currentLight = .red
//        }
//    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
