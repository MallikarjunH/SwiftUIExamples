//
//  MapView.swift
//  MapKit_Example
//
//  Created by EOO61 on 09/06/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 12.971599, longitude: 77.70),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 77.594566)
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
