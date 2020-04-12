//
//  Special.swift
//  00657025_hw2
//
//  Created by User24 on 2020/4/12.
//  Copyright © 2020 User12. All rights reserved.
//

import SwiftUI

struct Special: View {
    var body: some View {
        NavigationView {
            List {
                SpecialView()
            }
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            .navigationBarTitle("Special")
        }
    }
}

struct Special_Previews: PreviewProvider {
    static var previews: some View {
        Special()
    }
}

struct SpecialView: View {
    var body: some View {
        ForEach(0..<specials.count){ (row) in
            ScrollView(.vertical) {
                HStack(spacing: 10) {
                    SpecialExtra(row: row)
                }
            }
        }
    }
}

struct SpecialExtra: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 40) / 2
    var row: Int
    var body: some View {
        ForEach(0..<specials[row].count){ (column) in
            NavigationLink(destination: RestaurantDetail(restaurant: specials[self.row][column])) {
                VStack {
                    Image(specials[self.row][column].name)
                        .resizable()
                        .scaledToFill()
                        .frame(width: self.photoWidth, height: self.photoWidth)
                        .clipped()
                    Text(specials[self.row][column].name)
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
    }
}
