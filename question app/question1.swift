//
//  question1.swift
//  questionApp
//
//  Created by catherine on 6/24/24.
//

import SwiftUI

struct question1: View {
    @State private var userAns1 = ""
    @State private var answer1 = 29
    @State private var message = "1"
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
                    
                    Text("3³ + 4(8-5) ÷ 6 = ?")
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    VStack {
                        TextField("answer", text: $userAns1)
                            .padding(.horizontal, 0)
                            .padding(.vertical, 15)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .border(Color.black, width: 3)
                        Button("submit") {
                            if Int(userAns1) != nil {
                                if Int(userAns1) == answer1 {
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
                    NavigationLink(destination: question2()) {
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
    question1()
}

