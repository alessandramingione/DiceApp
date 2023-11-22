//
//  Filterbutton.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 21/11/23.
//

import SwiftUI

struct Filterbutton: View {
    @State var filter: Bool = false

        var body: some View {
            Button(action: { filter.toggle() }) {
                Text("Filter")
            }
            
            .accessibilityAddTraits(.isToggle)
        }
    }


#Preview {
    Filterbutton()
}
