//
//  ContentView.swift
//  ListAndNavigation
//
//  Created by Faraz Haider on 09/11/2021.
//
import SwiftUI

struct ContentView: View {
    let cities = BundleDecoder.decodeLandmarkBundleJson()
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(cities,id:\.cityId){ city in
                    Section(header: Text(city.name))
                    {
                        ForEach(city.landmarks,id:\.landmarkId)
                        {
                            landmark in
                            NavigationLink(
                                destination: LandmarkDetailView(landmark: landmark),
                                label: {
                                    LandmarkRow(landmark: landmark)
                                })
                        }
                    }
                }
            }.navigationBarTitle("Landmarks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
