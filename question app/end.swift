//
//  end.swift
//  questionApp
//
//  Created by catherine on 6/24/24.
//

import SwiftUI
struct end: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("results")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                Text("you got \(globalVar.numCorrect) questions right")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                NavigationLink(destination: ContentView()) {
                    Text("home")
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
    end()
}


