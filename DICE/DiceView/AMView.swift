//
//  AMView.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 17/11/23.
//

import SwiftUI

struct AMView: View {
    var body: some View {
        @State var isSelected: Bool = false
        ScrollView(.vertical){
            
            Image("arctic forse")
                .resizable()
                .frame(width:360, height:380)
                .cornerRadius(10)
                .overlay(alignment:.bottomTrailing){
                    ButtonView()
                        .padding()
                    
                }
            
            VStack {
                HStack{
                    Text("Arctic Monkeys Tour")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    Spacer()
                }
                
                HStack{
                    Text("Sun, 14th January at 21.30")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                    Spacer()
                }
                
                HStack{
                    Text("Palapartenope Theatre")
                        .font(.body)
                        .fontWeight(.semibold)
                        
                    Spacer()
                }
                HStack{
                    Image(systemName:"mic")
                        Text("Live")
                        
                    Image(systemName:"map")
                       Text("Naples")
                     
                    Spacer()
                }
            }
            .padding()
            
            Text("The Car is the seventh studio album by English rock band Arctic Monkeys, released on 21 October 2022 by Domino Recording Company. The album's songs were primarily written by frontman Alex Turner in his Los Angeles home and Paris. It was produced in Suffolk, Paris and London by frequent Arctic Monkeys collaborator James Ford, alongside frequent guest musicians Tom Rowley, Loren Humphrey and Tyler Parkford, and arranged by Bridget Samuels and Turner. Drummer Matt Helders took the picture on the album cover, which depicts a white car in an otherwise empty car park. Its title refers to said cover and the abundance of vehicular references in the lyrics.")
               
            
           .padding()
           Spacer()
            
        }
        
        ModalView()
    }
    }

#Preview {
    AMView()
        .preferredColorScheme(.dark)
}
