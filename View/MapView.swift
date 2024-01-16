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

// MARK: - EXTENSION
extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
}

#Preview {
    MapView()
}
