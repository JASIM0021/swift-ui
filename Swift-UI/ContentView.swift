//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI

import AVKit

struct ContentView: View {
    
//    @State private var color = Color.white
    

  
    var body: some View {
      
        
        VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!)){
            
            VStack{
                
                Text("Watermark")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
            }
        }
      
    }
}

#Preview {
    ContentView()
}


