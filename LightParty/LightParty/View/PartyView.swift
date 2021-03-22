//
//  PartyView.swift
//  LightParty
//
//  Created by riku yasui on 2021/03/22.
//

import SwiftUI

struct PartyView: View {
    
    @ObservedObject var partyViewModel: PartyViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .overlay(Circle().stroke(partyViewModel.color, lineWidth: 3))
                    .clipShape(Circle())
                    .padding()
                    
                Button(action: {
                    partyViewModel.startParty()
                }, label: {
                    Text("Push")
                })
                .foregroundColor(partyViewModel.color)
                .background(
                    Capsule()
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 50)
                )
            }
            .navigationBarTitle("Party!!!", displayMode: .inline)
            .navigationBarItems(trailing:
                Image(systemName: "pencil")
            )
        }
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView(partyViewModel: PartyViewModel())
    }
}
