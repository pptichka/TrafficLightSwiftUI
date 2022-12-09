//
//  LightsButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Ксн Тлскн on 09.12.2022.
//

import SwiftUI

struct LightsButtonView: View {
    @State private var buttonText: String
    
    var body: some View {
        Button(action: doSomething) {
            Text(buttonText)
                .font(.title)
            
        }
        .background(Color.gray)
        .clipShape(Capsule())
    }
}

private func doSomething() {
    
}
