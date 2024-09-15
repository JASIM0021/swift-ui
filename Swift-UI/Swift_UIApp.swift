//
//  Swift_UIApp.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI

@main
struct Swift_UIApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                ContentView()
                ContentView()
                ContentView()
                ContentView()
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
           
        }
    }
}
