//
//  Home.swift
//  Quiz
//
//  Created by Andy Lochan on 4/26/21.
//

import SwiftUI

struct Home: View {
    
    @State var show = false
    @State var set = "Round_1"
    
    @State var correct = 0
    @State var incorrect = 0
    @State var answered = 0
    
    var body: some View {
        
        VStack {
            Text("Andy")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            // Level View
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 30, content: {

                // 4 Levels
                ForEach(1...4, id: \.self) { index in

                    VStack(spacing: 15) {
                        Image("lv\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        
                        Text("SwiftUI Quiz")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text("LEVEL \(index)")
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)
                    // Open QA view as sheet
                    .onTapGesture(perform: {
                        set = "Round_\(index)"
                        show.toggle()
                    })
                }
                
            })
            .padding()
            
            Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {
            QA(correct: $correct, incorrect: $incorrect, answered: $answered, set: set)
        })
    }
}
