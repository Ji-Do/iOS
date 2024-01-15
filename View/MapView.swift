//
//  MapView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/14/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapView().ignoresSafeArea(.all)
}
