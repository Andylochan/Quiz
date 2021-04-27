//
//  QA.swift
//  Quiz
//
//  Created by Andy Lochan on 4/26/21.
//

import SwiftUI

struct QA: View {
    
    @Binding var correct: Int
    @Binding var incorrect: Int
    
    var body: some View {
        
        // Top Progess Bar
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
            
            Capsule()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 6)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 6)
        })
        .padding()
        
        // Correct-Incorrect Count
        HStack {
            Label(
                title: { Text(correct == 0 ? "" : "\(correct)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                })
            
            Spacer()
            
            Label(
                title: { Text(incorrect == 0 ? "" : "\(incorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                })
        }
        .padding()
        
        Spacer(minLength: 0)
    }
}

