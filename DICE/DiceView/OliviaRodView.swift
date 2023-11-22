//
//  OliviaRodView.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 17/11/23.
//

import SwiftUI

struct OliviaRodView: View {
    var body: some View {
        @State var isSelected: Bool = false
        ScrollView(.vertical){
            
            Image("Olivia")
                .resizable()
                .frame(width:360, height:380)
                .cornerRadius(10)
                .overlay(alignment:.bottomTrailing){
                    ButtonView()
                        .padding()
                }
            
            VStack {
                HStack{
                    Text("Olivia Rodrigo - Guts Tour")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    Spacer()
                }
                
                HStack{
                    Text("Mon, 8th April at 21.30")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                    Spacer()
                }
                
                HStack{
                    Text("Diego Armando Maradona Stadium")
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
            
            Text("Guts is the second studio album by American singer-songwriter Olivia Rodrigo, released on September 8, 2023, via Geffen Records. It was written and recorded with Rodrigo working closely alongside Dan Nigro, the producer and multi-instrumentalist of her debut album Sour (2021). Inspired by the period of time immediately following Sour's success, Rodrigo conceived Guts hoping to reflect the process of maturity she experienced toward the end of her teenage years.")
               
           .padding()
           Spacer()
            
        }
        
        ModalView()
    }
        
        
    }


#Preview {
    OliviaRodView()
        .preferredColorScheme(.dark)
}
