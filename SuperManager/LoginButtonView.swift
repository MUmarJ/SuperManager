//
//  LoginButtonView.swift
//  SuperManager
//
//  Created by MUmarJ on 1/31/23.
//

import SwiftUI

struct LoginButtonContent: View {
    let label: String
    var body: some View {
        Text(label)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.purple)
            .cornerRadius(15.0)
            .padding(.top)
    }
}

struct LoginButton: View {
    let label: String
    var body: some View {
        LoginButtonContent(label: label)
    }
}


struct LoginButtonView_Preview: PreviewProvider {
    static var previews: some View {
        LoginButton(label: "Button")
    }
}
