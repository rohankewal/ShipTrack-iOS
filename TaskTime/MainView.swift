//
//  MainView.swift
//  TaskTime
//
//  Created by Rohan Kewalramani on 11/2/23.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View {
        Text("ShipTrack")
            .font(.title)
            .bold()

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
