//
//  ContentView.swift
//  SuperManager
//
//  Created by MUmarJ on 1/31/23.
//

import SwiftUI
import SwiftUICharts

struct LoginView: View {
    @State private var checked = true
    var demo: [([Double], GradientColor)] = [
        ([8, 2, 4, 6, 12, 9, 2], GradientColors.green),
        ([90, 99, 78, 111, 70, 60, 77], GradientColors.purple),
        ([30, 59, 78, 11, 40, 32, 39], GradientColors.bluPurpl),
        ([34, 56, 72, 38, 43, 100, 50], GradientColors.orngPink)
    ]
    var body: some View {
        VStack {
            LoginHeadingView(
                heading: "SuperManager",
                caption: "Insights Dashboard"
            )
            IconCollectionView()
            MultiLineChartView(
                data: (demo.map { $0 }),
                title: "UMAR",
                rateValue: 9
            )
                .padding(.top, 20)
            LabelInputView(label: "email address")
            LabelInputView(label: "password")
            HStack {
                CheckBoxView(checked: $checked)
                Text("Use FaceID")
            }
                .padding(.top, 10)
            NavigationLink(
                destination: HomeView(
                    cards: HeroCard.samples
                )
            ) {
                LoginButton(label: "Login")
            }
        }
            .padding()
    }
}

struct LoginHeadingView: View {
    let heading: String
    let caption: String
    var body: some View {
        Text(heading)
            .font(.largeTitle)
            .padding(.bottom, 2)
        Text(caption)
            .font(.callout)
            .padding(.bottom, 4)
    }
}

struct IconCollectionView: View {
    var body: some View {
        HStack {
            Image(systemName: "chart.pie")
                .imageScale(.large)
                .foregroundColor(.gray)
                .padding(4)
            Image(systemName: "chart.line.uptrend.xyaxis.circle")
                .imageScale(.large)
                .foregroundColor(.gray)
                .padding(4)
            Image(systemName: "chart.bar.xaxis")
                .imageScale(.large)
                .foregroundColor(.gray)
        }
            .padding(.bottom, 8)
    }
}

struct LabelInputView: View {
    @State var input: String = ""
    let label: String
    var body: some View {
        VStack (alignment: .leading) {
            if label == "password"
            {
                HStack {
                    Text(label.capitalized)
                        .font(.subheadline)
                    Spacer()
                    Text("Forgot \(label)?")
                        .font(.footnote)
                        .foregroundColor(.accentColor)
                }
            }
            else {
                HStack {
                    Text(label.capitalized)
                        .font(.subheadline)
                }
            }
            TextField("Type your \(label)", text: $input)
                .cornerRadius(5)
                .padding()
                .overlay {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray, lineWidth: 1)
            }
        }
            .padding(.top, 10)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}
