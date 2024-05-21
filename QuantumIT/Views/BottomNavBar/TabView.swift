//
//  TabView.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem { Image(systemName: "house") }
                .tag(0)
            WorkoutView()
                .tabItem { Image(systemName: "dumbbell") }
                .tag(1)
            AnalyticsView()
                .tabItem { Image(systemName: "chart.bar.fill") }
                .tag(2)
            FoodView()
                .tabItem { Image(systemName: "fork.knife") }
                .tag(3)
        }
    }
}

#Preview {
    TabBarView()
}
