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
    @State var lightIsRed = 0.3
    @State var lightIsYellow = 0.3
    @State var lightIsGreen = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                
                ColorCircle(color: .red, opacity: lightIsRed)
                ColorCircle(color: .yellow, opacity: lightIsYellow)
                    .padding()
                ColorCircle(color: .green, opacity: lightIsGreen)
                
                Spacer()
                
                ButtonView(title: title, action: buttonTapped)
                    .padding()
            }
        }
    }
    
    private func buttonTapped() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
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
        Group {
            ContentView()
        }
    }
}
