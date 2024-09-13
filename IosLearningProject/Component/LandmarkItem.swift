//
//  LandmarkItem.swift
//  IosLearningProject
//
//  Created by Presidio on 06/09/24.
//

import SwiftUI
struct LandmarkItemView: View {
    var landmark : Landmark
    
    var body : some View {
        HStack {
            Text("\(landmark.id).").foregroundColor(.accentColor).font(.title)
            Spacer()
            Text(landmark.name).foregroundColor(.accentColor).font(.title)
        }.padding([.all],20)
    }
}
