//
//  ShipmentDetailView.swift
//  TaskTime
//
//  Created by Rohan Kewalramani on 11/4/23.
//

import Foundation
import SwiftUI

struct ShipmentDetailView: View {
    let ShipmentID: Int
    
    var body: some View {
        Text("Details for shipment with shipmentID: \(ShipmentID)")
    }
}

#Preview {
    ShipmentDetailView(ShipmentID: 1)
}
