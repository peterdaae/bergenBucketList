//
//  RestaurantPosterView.swift
//  bergenBucketList
//
//  Created by Peter Daae on 14/09/2026.
//

import SwiftUI

struct RestaurantPosterView: View {
    
    let posterURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: posterURL)) { img in
            img
                .resizable()
                .scaledToFill()
        } placeholder: {
           
            ZStack{
                Color.gray.opacity(0.15)
                ProgressView()
            }
        }
        .cornerRadius(12)
    }
}






