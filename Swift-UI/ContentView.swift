//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI
import MapKit
struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        VStack {
           
            Map(coordinateRegion: $region)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
