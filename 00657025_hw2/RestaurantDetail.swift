//
//  RestaurantDetail.swift
//  00657025_hw2
//
//  Created by User24 on 2020/4/9.
//  Copyright © 2020 User12. All rights reserved.
//

import SwiftUI

struct RestaurantDetail: View {
    var restaurant: Restaurant
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                RestaurantDetailImage(restaurant: restaurant)
                HStack {
                    Spacer()
                    Text(restaurant.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                .background(RadialGradient(gradient: Gradient(colors: [Color.gray, Color.white]), center: .center, startRadius: 5, endRadius: 200))
                Text(restaurant.specialty)
                    .foregroundColor(.orange)
                    .font(.system(size: 25))
                    .underline()
                    .padding()
                Text(restaurant.address)
                    .padding()
                Text(restaurant.time)
                    .font(.custom("Chalkduster", size: 15))
                    .padding()
                    .border(Color.blue, width: 2)
                Text(restaurant.info)
                    .padding()
                Spacer()
            }
            .navigationBarTitle(restaurant.name)
            .padding()
        }
    }
}

struct RestaurantDetail_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetail(restaurant: TaiwaneseRests[1])
    }
}

struct RestaurantDetailImage: View {
    var restaurant: Restaurant
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Image(restaurant.name+"1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 220)
                    .clipped()
                Image(restaurant.name+"2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 220)
                    .clipped()
                Image(restaurant.name+"3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 220)
                    .clipped()
            }
        }
    }
}
