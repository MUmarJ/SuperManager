//
//  CardView.swift
//  SuperManager
//
//  Created by MUmarJ on 2/1/23.
//

//
//  CardView.swift
//  Scrumy
//
//  Created by MUmarJ on 1/30/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title Words")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("5", systemImage: "person.3")

                Spacer()
                Label("10", systemImage: "clock")

                    .labelStyle(.trailingIcon)
            }
                .font(.caption)
        }
            .padding()
            .foregroundColor(.black)
    }
}
struct CardView_Previews: PreviewProvider {

    static var previews: some View {
        CardView()
            .background(.cyan)
            .previewLayout(
                .fixed(width: 400, height: 60)
        )
    }
}
