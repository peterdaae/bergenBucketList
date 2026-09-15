//
//  RestaurantDetailView.swift
//  bergenBucketList
//
//  Created by Peter Daae on 14/09/2026.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurants: Restaurant
    var body: some View {
        VStack{
            Form{
                HStack{
                    Section("") {
                        Spacer()
                        RestaurantPosterView(posterURL: restaurants.posterURL)
                            .frame(width: 420, height: 210)
                        Spacer()
                    }
                }
                .listRowBackground(Color.clear)
                Section("About"){
                    VStack(alignment: .leading){
                        Text(restaurants.title)
                            .font(.title)
                        Spacer()
                        Label {
                            Text("Popular")
                        }
                        icon: {
                            Image(systemName: "flame")
                                .foregroundStyle(.red)
                        }
                        Spacer()
                        Text(restaurants.summary)
                            .lineSpacing(8)
                            .foregroundStyle(.secondary)
                    }
                    
                }
            }
            
            VStack(spacing: 12){
                Text("Reserve Table")
                    .foregroundStyle(.black)
            }
            .foregroundStyle(.green)
            .padding(25)
            .lineLimit(1)
            .frame(maxWidth: .infinity)
            .background(Color.green)

        }
        .background(Color(uiColor: .secondarySystemBackground))
    }
}

#Preview {
    let restaurant = restaurants.first!
    RestaurantDetailView(restaurants: restaurant)
}
