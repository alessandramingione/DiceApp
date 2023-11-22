//
//  ContentView.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 14/11/23.


import SwiftUI

struct ContentView: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        NavigationStack{
            
            ScrollView(.vertical){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:20) {
                        ForEach(0..<1){_ in
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.orange)
                                        .opacity(0.3)
                                        .frame(width: 65, height: 65)
                                    Image(systemName: "moon.stars")
                                        .font(.title)
                                        .foregroundColor(.orange)
                                    
                                }
                                Text ("Tonight")
                                    .font(.footnote)
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle (cornerRadius: 10)
                                        .fill (Color.blue)
                                        .opacity(0.3)
                                        .frame(width: 65, height: 65)
                                    Image(systemName: "calendar")
                                        .font(.title)
                                        .foregroundStyle(Color.blue)
                                    
                                    
                                }
                                Text("This Week")
                                    .font(.footnote)
                            }
                            
                            
                            VStack {
                                ZStack {
                                    RoundedRectangle (cornerRadius: 10)
                                        .fill (Color.green)
                                        .opacity(0.3)
                                        .frame(width: 65, height: 65)
                                    Image(systemName: "speaker.wave.3")
                                        .font(.title)
                                        .foregroundStyle(Color.green)
                                }
                                
                                Text("New Shows")
                                    .font(.footnote)
                            }
                            
                            
                            VStack {
                                ZStack {
                                    RoundedRectangle (cornerRadius: 10)
                                        .fill (Color.purple)
                                        .opacity(0.3)
                                        .frame(width: 65, height: 65)
                                    Image(systemName: "eye")
                                        .font(.title)
                                        .foregroundStyle(Color.purple)
                                    
                                    
                                    
                                }
                                Text("Most Viewed")
                                    .font(.footnote)
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle (cornerRadius: 10)
                                        .fill (Color.red)
                                        .opacity(0.3)
                                        .frame(width: 65, height: 65)
                                    Image(systemName: "heart")
                                        .font(.title)
                                        .foregroundStyle(Color.red)
                                    
                                }
                                Text("Top Shows")
                                    .font(.footnote)
                            }
                        }
                        
                    }
                }
                
                .padding()
                
                
                
                NavigationLink{ eventView()}
                
            label:{
                
                VStack(spacing:0.1) {
                ForEach(0..<1){_ in
                        ZStack(){
                            
                            Image("oassiss")
                                .resizable()
                                .frame(width:363, height:390)
                                .cornerRadius(10)
                                .overlay(alignment:.bottomTrailing){
                                    ButtonView()
                                        .padding()
                                }
                            
                            VStack {
                                Spacer(minLength: 300)
                                HStack{
                                    Text("Oasis")
                                        .bold()
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }
                                
                                HStack{
                                    Text("24th November 2023")
                                        .font(.headline)
                                        .foregroundColor(.yellow)
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Diego Armando Maradona Stadium")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }
                                
                                HStack{
                                    Text("€ 125,50")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }
                                Text("")
                                
                                    .padding()
                                
                            }
                            .padding()
                            
                            
                           
                        }
                    }
                    NavigationLink{AMView()}
                    
                label: {
                    ZStack{
                        Image("arctic forse")
                            .resizable()
                            .frame(width:363, height:390)
                            .cornerRadius(10)
                            .overlay(alignment:.bottomTrailing){
                                ButtonView()
                                    .padding()
                            }
                        
                        
                        
                        VStack {
                            Spacer(minLength: 300)
                            HStack{
                                Text("Arctic Monkeys")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack{
                                
                                Text("14th January 2024")
                                    .font(.headline)
                                    .foregroundColor(.yellow)
                                Spacer()
                            }
                            
                            HStack{
                                Text("Palapartenope Theatre")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack{
                                Text("€ 43,00")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                                
                            }
                            Text("")
                                .padding()
                        }
                        .padding()
                        
                        
                    }
                }
                    
                    NavigationLink{OliviaRodView()}
                    
                label: {
                    ZStack{
                        Image("Olivia")
                            .resizable()
                            .frame(width:363, height:390)
                            .cornerRadius(10)
                            .overlay(alignment:.bottomTrailing){
                                ButtonView()
                                    .padding()
                            }
                        
                        VStack {
                            Spacer(minLength: 300)
                            HStack {
                                Text("Olivia Rodrigo")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack{
                                
                                Text("8th April 2024")
                                    .font(.headline)
                                    .foregroundColor(.yellow)
                                Spacer()
                            }
                            HStack{
                                Text("Diego Armando Maradona Stadium")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack{
                                Text("€ 57,50")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                                    
                            }
                            Text("")
                                .padding()
                            
                        }
                        .padding()
                        
                        
                    }
                    
                }
                }
                
                
                .navigationTitle("Home")
                
            }
                
                
            }
            
        }
    }
}
            #Preview {
                ContentView()
                    .preferredColorScheme(.dark)
            }
            
 
