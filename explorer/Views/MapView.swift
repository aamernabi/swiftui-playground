//
//  MapView.swift
//  explorer
//
//  Created by Lelafe on 09/01/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates: coordinates)
            }
    }
    
    private func setRegion(coordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinates: CLLocationCoordinate2D(
                latitude: 34.011_286,
                longitude: -116.166_868
            )
        )
    }
}
