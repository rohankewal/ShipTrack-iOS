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
        }.frame(height: 400)
        
        ZStack {
            List {
                Section(header: Text("Latest Shipments")) {
                    HStack {
                        Text("Shipment 1")
                    }
                    Text("Shipment 2")
                    Text("Shipment 3")
                    Text("Shipment 4")
                }
            }.cornerRadius(20).shadow(radius: 10).padding()
        }.frame(height: 250)
        
        TabView {
            EmptyView()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                        .foregroundColor(.black)
                }
            EmptyView()
                .tabItem {
                    Label("Shipments", systemImage: "shippingbox.fill")
                        .foregroundColor(.black)
                }
            EmptyView()
                .badge("!")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                        .foregroundColor(.black)
                }
        }
    }
}

#Preview {
    MainView()
}
