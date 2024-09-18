//
//  Places.swift
//  IosLearningProject
//
//  Created by Presidio on 18/09/24.
//

import SwiftData
import MapKit
import SwiftUICore

@available(iOS 17, *)
@Model
class Places {
    var place:String
    var latitude:Double
    var longitude:Double
    var intrested:Bool
    
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image :Image{
        Image(place.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    init(place: String, latitude: Double, longitude: Double, intrested: Bool) {
        self.place = place
        self.latitude = latitude
        self.longitude = longitude
        self.intrested = intrested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Places.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        
        return container
    }
    
    
    static var previewPlaces:[Places]{
        [
            Places(place: "Delhi", latitude: 28.7041, longitude: 77.1025, intrested: false),
            Places(place: "Mysore", latitude: 12.2958, longitude: 12.2958, intrested: false),
            Places(place: "Ooty", latitude: 11.410000, longitude: 76.699997, intrested: true),
            Places(place: "Kerala", latitude: 10.1632, longitude: 76.6413, intrested: false)
        ]
    }
}
