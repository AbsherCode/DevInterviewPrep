//
//  AlgoProblem.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import Foundation

enum Difficulty: String, CaseIterable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

struct AlgoProblem: Identifiable {
    let id: String
    let title: String
    let difficulty: Difficulty
    let description: String
}

