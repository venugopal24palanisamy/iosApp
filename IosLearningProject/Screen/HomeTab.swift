//
//  HomeTab.swift
//  IosLearningProject
//
//  Created by Presidio on 18/09/24.
//

import SwiftUI
import SwiftData

@available(iOS 17, *)
struct HomeTab: View {
    //@Query(sort: \Places.place) private var places:[Places]
    var body: some View {
        VStack {
            List(Places.previewPlaces) { place in
                VStack {
                    PlacesItem(place: place.place.lowercased())
                }.listRowBackground(Color.clear).listRowSeparator(.hidden)
            }.listStyle(PlainListStyle())

        }
    }
}
