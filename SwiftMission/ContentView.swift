//
//  ContentView.swift
//  SwiftMission
//
//  Created by Philippe Roget on 13/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    var color : Color = .blue
    
    var body: some View {
        ScrollView {
            VStack{
                AsyncImage(url: URL(string: "https://images.pexels.com/photos/15587225/pexels-photo-15587225/free-photo-of-mode-femme-veste-portrait.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load" )) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .cornerRadius(15)
                }
            placeholder: {
                Text("pas manqué")
            }
                Image(systemName: "rectangle.and.pencil.and.ellipsis")
                
                HStack {
                    Image("swimrun")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .clipShape(Circle())
                    
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Quentin")
                            .font(.headline)
                        Text("245 abonnés")
                    }
                    Spacer()
                    Button(
                        action: {},
                        label: {
                            Text("S'abonner")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(.blue)
                                .cornerRadius(10)
                        })
                }
                .padding(20)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
