//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI

import AVKit
struct ContentView: View {
    
    @State private var isFlipped = false
    
    @Namespace private var animation

  
    var body: some View {
      
        
     
        VStack{
            if isFlipped {
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 44,height: 44)
                    .matchedGeometryEffect(id: "shape", in: animation)
                Text("Jasim0021")
                    .font(.headline)
                    .matchedGeometryEffect(id: "text", in: animation)
            }else{
                Text("Jasim0021")
                    .font(.headline)
                    .matchedGeometryEffect(id: "text", in: animation)
                Circle()
                    .fill(Color.red)
                    .frame(width: 44,height: 44)
                    .matchedGeometryEffect(id: "shape", in: animation)
            }
            
        }
        .onTapGesture {
            withAnimation{
                isFlipped.toggle()
            }
        }
      
    }
}

#Preview {
    ContentView()
}


