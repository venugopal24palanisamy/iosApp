//
//  MapView.swift
//  IosLearningProject
//
//  Created by Presidio on 18/09/24.
//

import SwiftUI
import MapKit

@available(iOS 17.0, *)
struct MapView : View {
    
    @State var position : MapCameraPosition
    var body: some View {
        Map(position: $position)
    }
}

@available(iOS 17.0, *)
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(position: .camera(MapCamera(centerCoordinate: Places.previewPlaces[2].location, distance: 1000, heading: 250,pitch: 50)))
    }
}
