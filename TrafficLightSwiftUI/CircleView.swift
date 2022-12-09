//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Ксн Тлскн on 09.12.2022.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}
