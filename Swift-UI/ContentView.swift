//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI



struct BookMark : Identifiable {
    
    let id = UUID()
    let name : String
    let icon : String
    var item :[BookMark]?
}

struct ContentView: View {
    
//    @State private var color = Color.white
    
    let item :[BookMark] = [.example1,.example2,.example3]
  
    var body: some View {
      
        
        VStack{
            List(item,children: \.item) { row in
                
                Image(systemName: row.icon)
                Text(row.name)
            }
        }
      
    }
}

#Preview {
    ContentView()
}


extension BookMark {
    static let apple = BookMark(name: "Apple", icon: "1.circle" )
    static let bbc = BookMark(name: "BBC", icon: "square.and.pencil")
    static let swift = BookMark(name: "Swift", icon: "bolt.fill")
    static let twitter = BookMark(name: "Twitter", icon: "mic")
    
    static let example1 = BookMark(name: "Favorites", icon: "star", item: [
        BookMark.apple,BookMark.bbc,BookMark.swift,BookMark.twitter
    ])
    static let example2 = BookMark(name: "Recent", icon: "star", item: [
        BookMark.apple,BookMark.bbc,BookMark.swift,BookMark.twitter
    ])
    static let example3 = BookMark(name: "Recomended", icon: "star", item: [
        BookMark.apple,BookMark.bbc,BookMark.swift,BookMark.twitter
    ])
}
