//
//  QuestionView.swift
//  Quiz
//
//  Created by Andy Lochan on 4/29/21.
//

import SwiftUI

struct QuestionView: View {
    
    @Binding var question: Question
    @Binding var correct: Int
    @Binding var incorrect: Int
    @Binding var answered: Int
    
    var body: some View {
        
        VStack(spacing: 22) {
            
            Text(question.question!)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 25)
                
            Spacer(minLength: 0)
            
            // Options
            Button(action: {}, label: {
                Text(question.optionA!)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
            })
            
            Button(action: {}, label: {
                Text(question.optionB!)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
            })
            
            Button(action: {}, label: {
                Text(question.optionC!)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
            })
            
            Spacer(minLength: 0)
            
            // Buttons
            HStack(spacing: 15) {
                
                Button(action: {}, label: {
                    Text("Submit")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                
                Button(action: {}, label: {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
            }
            .padding(.bottom)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        
    }
}
