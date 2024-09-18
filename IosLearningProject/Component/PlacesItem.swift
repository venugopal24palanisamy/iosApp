//
//  PlacesItem.swift
//  IosLearningProject
//
//  Created by Presidio on 18/09/24.
//

import SwiftUI

//@available(iOS 17, *)
struct PlacesItem: View {
    
    //var places: Places
    var place :String
    
    var onClick :() -> Void
    
    var body: some View {
        VStack(alignment:.leading, spacing: 16.0){
            Image(place).resizable().frame(height: 200)
        }.background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding([.all],5)
            .shadow(radius: 18)
    }
}

struct PlacesItem_Previews: PreviewProvider {
    static var previews: some View {
        PlacesItem(place: "ooty",onClick: { })
    }
}

