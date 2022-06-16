//
//  ScrumsModel.swift
//  Weather
//
//  Created by Joshua David Ang on 17/6/22.
//

import SwiftUI

struct ScrumsModel {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
}

extension ScrumsModel {
    static let sampleData: [ScrumsModel] = [
        ScrumsModel(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10),
        ScrumsModel(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5),
        ScrumsModel(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],  lengthInMinutes: 5)
    ]
}
