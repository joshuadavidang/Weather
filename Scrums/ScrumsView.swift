//
//  ScrumsView.swift
//  Weather
//
//  Created by Joshua David Ang on 17/6/22.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums: [ScrumsModel]
    
    var body: some View {
        List {
            ForEach(scrums, id: \.title) { scrum in
    
                VStack {
                    Text(scrum.title)
                    HStack {
                        Image(systemName: "person.3")
                    }
                }
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: ScrumsModel.sampleData)
    }
}
