//
//  CarouselView.swift
//  SuperManager
//
//  Created by MUmarJ on 2/1/23.
//

import SwiftUI

struct CarouselView: View {
    let cards: [HeroCard]
    var body: some View {

        TabView {
            ForEach(cards) { card in
                CarouselCard(card: card)
            }
        }
            .tabViewStyle(.page)
//            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .frame(width: 350)
            .padding(20)
    }
}

struct CarouselCard: View {
    let card: HeroCard
    var body: some View {
        VStack () {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .offset(x:32, y:-80)
            .frame(height: 140)
            VStack (alignment: .leading) {
                Text(card.title).font(.headline)
                Text(card.subtitle).font(.subheadline)
                    .padding(.bottom, 5)
                Text(card.description)
            }

        }
            .cornerRadius(4)
            .shadow(color: Color.cyan.opacity(0.3), radius: 30)
            .blur(radius: 0.3)
            .padding()
            .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.cyan, lineWidth: 1)
        }
    }
}

struct CarouselView_Preview: PreviewProvider {
    static var previews: some View {
        CarouselView(cards: [HeroCard.samples[0], HeroCard.samples[1]])
    }
}
