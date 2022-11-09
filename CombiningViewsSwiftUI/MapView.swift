//
//  MapView.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 09/11/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -7.3512, longitude: 106.4229),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

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
