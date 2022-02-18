//
//  SwiftUIView.swift
//  Traffic Lights
//
//  Created by Дмитрий Чепанов on 17.02.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @State var title: String
    @State var action: () -> Void
    
    var body: some View {
        Button(action: action) {
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
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
