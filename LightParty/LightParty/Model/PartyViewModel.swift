//
//  PartyViewModel.swift
//  LightParty
//
//  Created by riku yasui on 2021/03/22.
//

import SwiftUI

class PartyViewModel: ObservableObject, Identifiable {
    @Published var color: Color = .white
    
    func startParty() {
        print("Let's party!!!")
        color = .red
    }
}
