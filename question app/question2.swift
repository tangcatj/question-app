//
//  question2.swift
//  questionApp
//
//  Created by catherine on 6/24/24.
//

import SwiftUI

struct question2: View {
    @State private var userAns2 = ""
    @State private var answer2 = 1
    @State private var message = "2"
    @State private var nextPage = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    VStack {
                        Text(message)
                            .padding(.horizontal, 10)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    .background(Color(.blue))
                    .cornerRadius(10)
                    .padding()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 120)
                    Text("9 - 3 ÷ = ⅓ + 1 = ?")
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    VStack {
                        TextField("answer", text: $userAns2)
                            .padding(.horizontal, 0)
                            .padding(.vertical, 15)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .border(Color.black, width: 3)
                        Button("submit") {
                            if Int(userAns2) != nil {
                                if Int(userAns2) == answer2 {
                                    message = "correct!"
                                    globalVar.numCorrect += 1
                                    nextPage = true
                                }
                                else {
                                    message = "incorrect!"
                                    nextPage = true
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .background(Color(.blue))
                        .padding(.top, 20)
                        Spacer()
                    }
                    .padding(.horizontal, 100.0)
                }
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                if nextPage == true {
                    NavigationLink(destination: question3()) {
                        Text("next →")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding(.trailing)
                    }
                }
            
                }
            }
        .navigationBarBackButtonHidden()
            
        }
    }


#Preview {
    question2()
}

