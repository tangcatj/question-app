//
//  ContentView.swift
//  questionApp
//
//  Created by catherine on 6/24/24.
//

import SwiftUI
struct globalVar {
    static var numCorrect = 0
}
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("math pop quiz")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                Text("how well do you know your order of operations?")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                NavigationLink(destination: question1()) {
                    Text("start")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .background(Color(.blue))
                }
            }
            .padding(.horizontal, 70)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}

