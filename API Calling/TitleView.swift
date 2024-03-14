//
//  TitleView.swift
//  API Calling
//
//  Created by Ethan Davis on 3/14/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Fun Cat Facts!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(55.0)
                Image("Cats")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                NavigationLink(destination: ContentView()) {
                    Text("View Facts")
                        .frame(width: 130.0, height: 40.0)
                        .background(Color.yellow)
                        .border(Color.black, width: 2.5)
                        .padding(55.0)
                }
                Button(action: {
                    if let url = URL(string: "https://www.google.com/search?q=cat-facts") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Continue your research!")
                }
            }
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
//https://www.google.com/search?q=cat-facts
