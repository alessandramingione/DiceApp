//
//  Button.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 20/11/23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        Button(action:{isSelected.toggle() })
        {
            
            Image(systemName: isSelected ? "heart.fill" : "heart")
                .bold()
                .foregroundColor(isSelected ? .red: .white)
                .font(.title)
            
        }
        
        
        
        
    }
}

#Preview {
    ButtonView()
        .preferredColorScheme(.dark)
}
