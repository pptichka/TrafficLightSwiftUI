//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ксн Тлскн on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redLight = CircleView(color: .red, opacity: 0.3)
    @State private var yellowLight = CircleView(color: .yellow, opacity: 0.3)
    @State private var greenLight = CircleView(color: .green, opacity: 0.3)
    
    @State private var currentLight = TrafficLight.red
    @State private var buttonTitle = "START"
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redLight
                yellowLight
                greenLight
                Spacer()
                Button(action: didTapped) {
                    Text(buttonTitle)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.gray)
                .clipShape(Capsule())
            }
            .padding()
        }
    }
    
    private func didTapped() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        switch currentLight {
        case .red:
            redLight.opacity = 1
            greenLight.opacity = 0.3
            currentLight = .yellow
        case .yellow:
            redLight.opacity = 0.3
            yellowLight.opacity = 1
            currentLight = .green
        case .green:
            yellowLight.opacity = 0.3
            greenLight.opacity = 1
            currentLight = .red
        }
    }
}

enum TrafficLight {
    case red
    case yellow
    case green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

