//
//  QuestionViewModel.swift
//  Quiz
//
//  Created by Andy Lochan on 4/27/21.
//

import SwiftUI
import Firebase

class QuestionViewModel: ObservableObject {

    @Published var questions: [Question] = []
    
    func getQuestion(set: String) {
        
        let db = Firestore.firestore()
        
        db.collection(set).getDocuments { (snap, err) in
            
            guard let data = snap else { return }
            
            DispatchQueue.main.async {
                self.questions = data.documents.compactMap({ (doc) -> Question? in
                    return try? doc.data(as: Question.self)
                })

            }
        }
    }
    
}

