//
//  Landmarks.swift
//  ListAndNavigation
//
//  Created by Faraz Haider on 09/11/2021.
//

import Foundation

struct Landmark : Decodable
{
    let landmarkId : Int
    let name, photo, description: String
}

struct City : Decodable
{
    let cityId: Int
    let name: String
    let landmarks: [Landmark]
}
