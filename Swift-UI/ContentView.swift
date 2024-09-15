//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI
import SpriteKit


struct ContentView: View {
    
    @State private var color = Color.white
  
    var body: some View {
      
        ZStack{
            Color(color)
            VStack {
                
                ColorPicker("Set the Background Color", selection: $color)
                    .frame(height: 200)
            }
//            .background(color)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
