//
//  LandmarkRow.swift
//  ListAndNavigation
//
//  Created by Faraz Haider on 09/11/2021.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            Image(landmark.photo).resizable().frame(width: 50, height: 50, alignment: .center)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: Landmark(landmarkId: 1, name: "test", photo: "goi", description: "test"))
    }
}
