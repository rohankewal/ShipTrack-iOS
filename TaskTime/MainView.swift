//
//  MainView.swift
//  TaskTime
//
//  Created by Rohan Kewalramani on 11/2/23.
//

import Foundation
import SwiftUI
import MapKit

struct MainView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Text("ShipTrack")
            .font(.title)
            .bold()
        
        ZStack {
            Map(coordinateRegion: $region)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
            // You can add more styling to make it look like a card
        }
        
        TabView {
            EmptyView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "house.fill")
                }
            EmptyView()
                .tabItem {
                    Label("Sent", systemImage: "map.fill")
                }
            EmptyView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "gear")
                }
        }
    }
}

#Preview {
    MainView()
}
