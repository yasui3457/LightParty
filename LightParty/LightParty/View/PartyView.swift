//
//  PartyView.swift
//  LightParty
//
//  Created by riku yasui on 2021/03/22.
//

import SwiftUI

struct PartyView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    
                Button(action: {
                    
                }, label: {
                    Text("Push")
                })
                .foregroundColor(.white)
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
        PartyView()
    }
}
