//
//  MapView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/14/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @Namespace var mapScope
    
    // MARK: - BODY
    var body: some View {
        Map() {
            
        }
        .mapControls {
            MapUserLocationButton()
        }
        
    }
}

#Preview {
    MapView()
}
