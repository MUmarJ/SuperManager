//
//  HomeView.swift
//  SuperManager
//
//  Created by MUmarJ on 2/1/23.
//

import SwiftUI

struct HomeView: View {
    let cards: [HeroCard]
    var body: some View {
        VStack {
            CarouselView(cards: cards)
            List {
                ForEach(1..<4) { _ in
                    CardView()

                }
            }
        }
            .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(cards:
            HeroCard.samples
        )
    }
}
