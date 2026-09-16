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
                ForEach(restaurants) {
                    restaurant in NavigationLink {
                        RestaurantDetailView(restaurant: restaurant)
                    } label: {
                        HStack(spacing: 8){
                            RestaurantPosterView(posterURL: restaurant.posterURL)
                                .frame(width: 150)
                            VStack(alignment: .leading){
                                Text(restaurant.title)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Label {
                                    Text("\(restaurant.review, specifier: "%.1f")")
                                } icon: {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                                .font(.headline)
                            }
                        }
                    }
                }
        }
        .background(Color(uiColor: .secondarySystemBackground))
        .navigationTitle("Restaurants in Bergen")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationStack{
        RestaurantView()
    }
}
