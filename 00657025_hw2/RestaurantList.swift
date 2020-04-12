//
//  RestaurantList.swift
//  00657025_hw2
//
//  Created by User24 on 2020/4/9.
//  Copyright © 2020 User12. All rights reserved.
//

import SwiftUI

struct RestaurantList: View {
    var body: some View {
        NavigationView {
            List {
                FirstSection()
                SecondSection()
                ThirdSection()
                ForthSection()
            }
            .navigationBarTitle("Restaurant List")
        }
    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantList()
    }
}

struct FirstSection: View {
    var body: some View {
        Section(header: Text("Featured").fontWeight(.bold).padding(.leading)) {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<Features.count){ (index) in
                        NavigationLink(destination: RestaurantDetail(restaurant: Features[index])) {
                            Image(Features[index].name)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 220, height: 150)
                                .clipped()
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

struct SecondSection: View {
    var body: some View {
        Section(header: Text("Japanese Restaurant").fontWeight(.bold).padding(.leading)) {
            ScrollView(.vertical) {
                ForEach(0..<JapanRests.count){ (index) in
                    NavigationLink(destination: RestaurantDetail(restaurant: JapanRests[index])) {
                        RestaurantRow(restaurant: JapanRests[index])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct ThirdSection: View {
    var body: some View {
        Section(header: Text("Taiwanese Restaurants").fontWeight(.bold).padding(.leading)) {
            ScrollView(.vertical) {
                ForEach(0..<TaiwaneseRests.count){ (index) in
                    NavigationLink(destination: RestaurantDetail(restaurant: TaiwaneseRests[index])) {
                        RestaurantRow(restaurant: TaiwaneseRests[index])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct ForthSection: View {
    var body: some View {
        Section(header: Text("Other Restaurants").fontWeight(.bold).padding(.leading)) {
            ScrollView(.vertical) {
                ForEach(0..<others.count){ (index) in
                    NavigationLink(destination: RestaurantDetail(restaurant: others[index])) {
                        RestaurantRow(restaurant: others[index])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}
