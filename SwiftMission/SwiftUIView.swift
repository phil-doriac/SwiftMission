//
//  SwiftUIView.swift
//  SwiftMission
//
//  Created by Philippe Roget on 13/12/2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    var name: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button(
            action: {action()},
            label: {Text(name)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(color)
                    .cornerRadius(10)
                
            })
        .padding(5)
    }
    
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SwiftUIView(name: "Supprimer", color: .red, action: {print("suppresion")})
            SwiftUIView(name: "S'abonner", color: .blue, action: {print("abonnement")})
            SwiftUIView(name: "Signaler", color: .yellow, action: {print("signalement")})
        }
    }
}

