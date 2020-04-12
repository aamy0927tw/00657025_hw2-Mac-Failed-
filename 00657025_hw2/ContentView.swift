//
//  ContentView.swift
//  00657025_hw2
//
//  Created by User12 on 2020/4/7.
//  Copyright © 2020 User12. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RestaurantList()
                .tabItem {
                    Image(systemName: "house")
                    Text("Restaurant")
            }
            Special()
                .tabItem {
                    Image(systemName: "star")
                    Text("Special")
            }
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
