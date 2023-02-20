//
//  HeroCard.swift
//  SuperManager
//
//  Created by MUmarJ on 2/1/23.
//

import Foundation

struct HeroCard: Identifiable {
    let id: UUID
    var title: String
    var subtitle: String
    var description: String
    var image: String

    init(id: UUID = UUID(), title: String, subtitle: String, description: String, image: String) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.image = image
    }
}

extension HeroCard {
    static let samples: [HeroCard] = [
        HeroCard(
            title: "Bubble",
            subtitle: "Subtitle",
            description: "Some people have an ability to write placeholder text... It's an art you're basically born with. You either have it or you don't. My placeholder text, I think, is going to end up being very good with women.",
            image: "NestLogo"
        ),
        HeroCard(
            title: "Triangle",
            subtitle: "Subtitle",
            description: "Some people have an ability to write placeholder text... It's an art you're basically born with. You either have it or you don't. My placeholder text, I think, is going to end up being very good with women.",
            image: "TriangleLogo"
        ),
    ]
}
