//
//  ContentView.swift
//  AnimatedDemo
//
//  Created by Thongchai Subsaidee on 30/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: change ? 120 : 0, y: change ? 300: 0)
                .animation(.easeOut, value: change)
            
            Spacer()
            
            Button("change") {
                change.toggle()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
