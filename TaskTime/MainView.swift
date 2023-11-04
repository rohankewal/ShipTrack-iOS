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
        VStack(spacing: 0) { // Use VStack to stack views vertically
            HStack {
                Text("ShipTrack")
                    .font(.title)
                    .bold()
                Spacer()
            }.padding()
            
            GeometryReader { geometry in // This will fill the space between the header and TabView
                VStack(spacing: 0) { // No spacing between Map and List
                    Map(coordinateRegion: $region)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding()
                        .frame(height: geometry.size.height / 2) // 50% of the height
                    
                    NavigationView {
                        List {
                            Section(header: Text("Latest Shipments")) {
                                NavigationLink(destination: ShipmentDetailView(ShipmentID: 1)) {
                                    Text("Shipment 1")
                                }
                                // ... repeat for other list items
                            }
                        }
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding()
                    }
                    .frame(height: geometry.size.height / 2) // 50% of the height
                    .accentColor(.black)
                }
            }
            
            TabView {
                // ... TabView content
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
        .edgesIgnoringSafeArea(.bottom) // To ensure the TabView can extend into the bottom safe area
    }
}

#Preview {
    MainView()
}
