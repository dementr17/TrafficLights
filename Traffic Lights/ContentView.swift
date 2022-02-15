//
//  ContentView.swift
//  Traffic Lights
//
//  Created by Дмитрий Чепанов on 15.02.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State var currentLight = CurrentLight.red
    @State var title = "START"
    @State var lightIsOn = 1.0
    @State var lightIsOff = 0.3
    
    @State var lightIsRed = 0.3
    @State var lightIsYellow = 0.3
    @State var lightIsGreen = 0.3
    
//    var color: Color
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: lightIsRed)
                ColorCircle(color: .yellow, opacity: lightIsYellow)
                    .padding()
                ColorCircle(color: .green, opacity: lightIsGreen)
                
                Spacer()
                
                buttonSettings
            }
        }
    }
    
    private var buttonSettings: some View {
        Button(action: { buttonTapped() }) {
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 150, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 5)
                            )
            }
        .padding()
    }
    
    private func buttonTapped() {
        if title == "START" {
            title = "NEXT"
        }

        switch currentLight {
        case .red:
            lightIsGreen = lightIsOff
            lightIsRed = lightIsOn
            currentLight = .yellow
        case .yellow:
            lightIsRed = lightIsOff
            lightIsYellow = lightIsOn
            currentLight = .green
        case .green:
            lightIsYellow = lightIsOff
            lightIsGreen = lightIsOn
            currentLight = .red
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
