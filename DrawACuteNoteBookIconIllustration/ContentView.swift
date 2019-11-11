//
//  ContentView.swift
//  DrawACuteNoteBookIconIllustration
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.green, Color.blue]), center: .center, startRadius: 5, endRadius: 500)
                .scaleEffect(1.2)
            ZStack {
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(width: 150, height: 200)
                        .foregroundColor(Color(red: 0.914, green: 0.914, blue: 0.914)).opacity(1)
                    Rectangle()
                        .frame(width: 10, height: 200)
                        .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                }
                VStack(spacing: 8) {
                    ForEach(0..<20) { item in
                        Rectangle()
                            .frame(width: 145, height: 1)
                            .foregroundColor(.blue).opacity(0.4)
                    }
                }.offset(x: -5, y: 5)
                HStack(spacing: -6) {
                    ForEach(0..<10) { item in
                        Circle()
                            .trim(from: 1/4, to: 1)
                            .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                            .offset(y: -100)
                    }
                }.offset(x: -5).shadow(color: .gray, radius: 10, x: 0, y: 2)
            }.scaleEffect(1)
            .rotation3DEffect(.degrees(-145), axis: (x: 1, y: 3, z: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
