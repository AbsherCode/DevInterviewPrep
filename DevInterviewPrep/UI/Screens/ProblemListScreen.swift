//
//  ProblemListScreen.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct ProblemListScreen: View {
    var body: some View {
        List(ProblemProvider.problems) { problem in
            NavigationLink(value: problem.id) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(problem.title)
                        .font(.headline)
                    Text(problem.difficulty.rawValue)
                        .font(.subheadline)
                        .foregroundColor(difficultyColor(problem.difficulty))
                }
                .padding(.vertical, 4)
            }
        }
        .listStyle(.plain)
    }
    
    func difficultyColor(_ level: Difficulty) -> Color {
        switch level {
        case .easy: return .green
        case .medium: return .orange
        case .hard: return .red
        }
    }
}
