//
//  RestaurantDetailView.swift
//  bergenBucketList
//
//  Created by Peter Daae on 14/09/2026.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    let restaurant: Restaurant
    //@State private var isPressed: Bool
    @State private var countPeople: Int = 0
    
    var body: some View {
        VStack{
            Form{
                HStack{
                        Spacer()
                        RestaurantPosterView(posterURL: restaurant.posterURL)
                            .frame(width: 420, height: 210)
                        Spacer()
                    }
                .listRowBackground(Color.clear)
                Section("About"){
                    VStack(alignment: .leading){
                        Text(restaurant.title)
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
                        Text(restaurant.summary)
                            .lineSpacing(8)
                            .foregroundStyle(.secondary)
                    }
                    
                }
            }
            
            VStack(spacing: 16){
                Text("Reserve table")
                    .foregroundStyle(.black)
                    .font(.title)
                    .monospacedDigit()
                HStack(spacing: 32) {
                    Button {
                        countPeople = max(0, countPeople - 1)
                    } label: {
                        Label("Remove person", systemImage: "minus.circle.fill")
                            .labelStyle(.iconOnly)
                    }
                    
                    Text("\(countPeople)")
                        .font(.title3)
                        .monospacedDigit()
                        .frame(minWidth: 24)
                    
                    Button {
                        countPeople += 1
                    } label: {
                        Label("Add person", systemImage: "plus.circle.fill")
                            .labelStyle(.iconOnly)
                    }
                }
                .font(.title)
                .foregroundStyle(.black)
            }
            .padding(25)
            .lineLimit(1)
            .frame(maxWidth: .infinity)
            .background(.green)
        }
        .background(Color(uiColor: .secondarySystemBackground))
        
    }
}

#Preview {
    let restaurant = restaurants.first!
    RestaurantDetailView(restaurant: restaurant)
}
