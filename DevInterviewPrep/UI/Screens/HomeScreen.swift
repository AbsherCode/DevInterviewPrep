//
//  HomeScreen.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Main Category Picker Switch
                Picker("Tabs", selection: $selectedTab) {
                    Text("Algorithms").tag(0)
                    Text("UI Components").tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
                
                // Embedded Destination List Views
                if selectedTab == 0 {
                    ProblemListScreen()
                } else {
                    ComponentListScreen()
                }
            }
            .navigationTitle("Dev Interview Prep")
            // Central Route destination injection mapping logic (Equivalent to Composable Destinations)
            .navigationDestination(for: String.self) { itemId in
                SolutionScreen(problemId: itemId)
            }
        }
    }
}
