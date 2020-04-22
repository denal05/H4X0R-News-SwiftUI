//
//  PostData.swift
//  H4X0R News
//
//  Originally created by Angela Yu on 08/09/2019.
//  Adapted by Denis Aleksandrov on 2020-04-22.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
