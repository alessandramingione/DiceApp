//
//  DICEApp.swift
//  DICE
//
//  Created by Alessandra Chiara Mingione on 14/11/23.
//

import SwiftUI

@main
struct DICEApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem {
                        Label ("Home", systemImage: "house")
                    }
                
                SearchView()
                    .tabItem {
                        Label ("Search", systemImage: "magnifyingglass")
                        
                    }
                ProfileView()
                    .tabItem {
                        Label ("Favorite", systemImage: "heart")
                        
                    }
                FavView()
                    .tabItem { 
                        Label ("Profile", systemImage: "person" )
                        
                    }
            }
        }
    }
}

