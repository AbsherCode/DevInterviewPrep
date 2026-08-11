//
//  DataProviders.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import Foundation

struct ProblemProvider {
    static let problems = [
        AlgoProblem(id: "two_sum", title: "Two Sum", difficulty: .easy, description: "Find two numbers that add up to a specific target."),
        AlgoProblem(id: "reverse_string", title: "Reverse String", difficulty: .easy, description: "Reverse an array of characters in-place.")
    ]
}

struct ComponentProvider {
    static let components = [
        ComponentExample(id: "custom_button", name: "Interactive Buttons", category: "Inputs", description: "Examples of Filled, Outlined, and Plain buttons."),
        ComponentExample(id: "custom_card", name: "Complex Cards", category: "Surfaces", description: "Styled custom containers showcasing layout hierarchy.")
    ]
}

