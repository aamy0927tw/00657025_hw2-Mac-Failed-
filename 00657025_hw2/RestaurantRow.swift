//
//  RestaurantRow.swift
//  00657025_hw2
//
//  Created by User24 on 2020/4/9.
//  Copyright © 2020 User12. All rights reserved.
//

import SwiftUI

struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        HStack {
            RestaurantRowImage(restaurant: restaurant)
            Text(restaurant.name)
                .font(.system(size: 25))
                .fontWeight(.heavy)
                .padding(8.0)
            Spacer()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.white]), startPoint: .trailing, endPoint: .leading))
    }
}

struct RestaurantRow_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantRow(restaurant: JapanRests[0])
    }
}

struct RestaurantRowImage: View {
    var restaurant: Restaurant
    var body: some View {
        Image(restaurant.name)
            .resizable()
            .scaledToFill()
            .frame(width: 110, height: 110)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}
