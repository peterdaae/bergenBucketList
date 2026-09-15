//
//  RestaurantView.swift
//  bergenBucketList
//
//  Created by Peter Daae on 14/09/2026.
//

import SwiftUI

struct RestaurantView: View {
    var body: some View {
        List {
            Section("Restaurants") {
                ForEach(restaurants) {
                    restaurant in NavigationLink {
                        RestaurantDetailView(restaurants: restaurant)
                    } label: {
                        HStack(spacing: 16){
                            RestaurantPosterView(posterURL: restaurant.posterURL)
                            VStack(alignment: .leading){
                                Text(restaurant.title)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Label {
                                    Text("\(restaurant.review, specifier: "%.1f")")
                                } icon: {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                                .font(.title2)
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    NavigationStack{
        RestaurantView()
    }
}
