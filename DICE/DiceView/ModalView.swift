//
//  ModalView.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 17/11/23.
//

import SwiftUI

struct ModalView: View {
        @State private var isModalPresented = false

            var body: some View {
                VStack {
                    Button("Buy Tickets")
                    {
                        self.isModalPresented.toggle()
                    }
                }
                .sheet(isPresented: $isModalPresented) {
                    TicketPurchaseView(isModalPresented: $isModalPresented)
                }
            }
        
        struct TicketPurchaseView: View {
            @Binding var isModalPresented: Bool
            @State private var numberOfTickets = 1
            @State private var creditCardNumber = ""
           

            var body: some View {
                NavigationView {
                    Form {
                        Section(header: Text("Number of Tickets")) {
                            Stepper(value: $numberOfTickets, in: 1...10) {
                                Text("Tickets: \(numberOfTickets)")
                            }
                        }

                        Section(header: Text("Payment Information")) {
                            TextField("Credit Card Number", text: $creditCardNumber)
                                .keyboardType(.numberPad)
                        }


                        Section {
                            Button("Purchase") {
                                self.isModalPresented = false
                            }
                        }
                    }
                    .navigationTitle("€ 125,50")
                    .navigationBarItems(trailing: Button("Cancel") {
                        self.isModalPresented = false
                    })
                }
            }
        }
        
        
    }


#Preview {
    ModalView()
        .preferredColorScheme(.dark)
}
