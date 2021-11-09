//
//  LandmarkDetailView.swift
//  ListAndNavigation
//
//  Created by Faraz Haider on 09/11/2021.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark : Landmark
    
    var body: some View {
        VStack {
            Image(landmark.photo).resizable().scaledToFit()
            Text(landmark.description)
            Spacer()
        }.padding()
        .navigationBarTitle(landmark.name, displayMode: .inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: Landmark(landmarkId: 1, name: "Test", photo: "goi", description: "Desription"))
    }
}
