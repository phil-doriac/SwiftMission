//
//  button.swift
//  SwiftMission
//
//  Created by Philippe Roget on 13/12/2023.
//

import SwiftUI

struct button: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.indigo)
                .frame(width: 60)
                .buttonStyle(.automatic)
            Circle()
                .foregroundColor(.blue)
                .frame(width: 45)
                .buttonStyle(.bordered)
            Image(systemName: "square.and.arrow.down")
                .foregroundColor(.white)
                .font(.system(size: 25))
            
            
        }
    }
}

struct button_Previews: PreviewProvider {
    static var previews: some View {
        button()
            .previewLayout(.sizeThatFits)
    }
}
