//
//  ContentView.swift
//  bergenBucketList
//
//  Created by Peter Daae on 14/09/2026.
//
/**
 https://www.google.com/maps/place/La+Taqueria/@60.3918081,5.3182297,17z/data=!3m1!4b1!4m6!3m5!1s0x463cfc0259eca4d1:0x4e5bb8e90964cead!8m2!3d60.3918055!4d5.3208046!16s%2Fg%2F11clzkghcj?hl=gl&entry=ttu&g_ep=EgoyMDI2MDkwOS4wIKXMDSoASAFQAw%3D%3D
 **/

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab("Restaurant", systemImage: "fork.knife") {
                NavigationStack{RestaurantView()}
            }
            Tab("Opplevelser", systemImage: "figure.badminton") {
                NavigationStack{OpplevelserView()}
            }
            Tab("Kjekt å vite", systemImage: "info.circle") {
                NavigationStack{KjektViteView()}
            }
        }
    }
}

#Preview {
    ContentView()
}
