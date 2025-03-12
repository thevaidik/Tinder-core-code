//
//  CardsViewModel.swift
//  Tinder
//
//  Created by Vaidik Dubey on 12/03/25.
//

import Foundation
import SwiftUI

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task {
            await fetchCardModels()
        }
    }
    
    func fetchCardModels () async{
        do{
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch card with error \(error)")
        }
    }
}
