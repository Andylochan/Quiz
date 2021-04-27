//
//  Question.swift
//  Quiz
//
//  Created by Andy Lochan on 4/27/21.
//

import SwiftUI
import FirebaseFirestoreSwift

// Codable Model
struct Question: Identifiable, Codable {
    
    // Fetch doc ID
    @DocumentID var id: String?
    var question: String?
    var optionA: String?
    var optionB: String?
    var optionC: String?
    var answer: String?
    
    // For checking
    var isSubmitted = false
    var completed = false
    
    // Declare the coding keys with respect to firebase firestore keys
    enum CodingKeys: String, CodingKey {
        case question
        case optionA = "a"
        case optionB = "b"
        case optionC = "c"
        case answer
    }
}
