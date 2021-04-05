//
//  ContentView.swift
//  ArrowAnimation WatchKit Extension
//
//  Created by Alexander Römer on 05.04.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startAnimation = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 70, height: 50)
                .scaleEffect(x: startAnimation ? 1.15 : 1, y: 1, anchor: .leading)
            Image(systemName: "arrow.right")
//                .font(.title)
                .offset(x: startAnimation ? 18 : 0)

        }
        .animation(Animation.easeInOut(duration: 0.7)
                    .repeatForever(autoreverses: true))
        .onAppear() {
            startAnimation.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


