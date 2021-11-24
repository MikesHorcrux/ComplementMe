//
//  ComplementsViewModel.swift
//  ComplementMe
//
//  Created by Mike  Van Amburg on 11/23/21.
//

import Foundation

class ComplemantsViewModel: ObservableObject {
    @Published var complements = Complements()
    
    func grabARandomCompliment() {
        guard let grabbedCompliment = complements.complementsList.randomElement() else {
            print("Could not grab a compliment")
            return
        }
        complements.complement = grabbedCompliment
    }
}
