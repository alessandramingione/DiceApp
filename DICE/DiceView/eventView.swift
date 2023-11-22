//
//  eventView.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 16/11/23.
//

import SwiftUI

struct eventView: View {
    @State var isSelected: Bool = false
    var body: some View {
        
        ScrollView(.vertical){
            
            Image("oassiss")
                .resizable()
                .frame(width:360, height:380)
                .cornerRadius(10)
                .overlay(alignment:.bottomTrailing){
                    ButtonView()
                        .padding()
                    
                }
                    
                    VStack {
                        HStack{
                            Text("Oasis - Masterplan Tour")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                        }
                        
                        HStack{
                            Text("Fri, 24 Nov at 21.30")
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
                    
                    Text("The Masterplan is a compilation album by English rock band Oasis. It was released on 2 November 1998 by Creation Records, the band's final release through the label. It comprises B-sides which never made it onto an album up to that point. The Masterplan reached number 2 in the UK, where it initially went platinum,and number 51 in the United States. However, it did reach the Top 20 in various charts around the world, going on to sell 3 million copies. It has since been certified triple platinum in the UK.")
                    
                    
                        .padding()
                    Spacer()
                    
                }
            
            ModalView()
        }
    }
    
    #Preview {
        eventView()
            .preferredColorScheme(.dark)
    }
