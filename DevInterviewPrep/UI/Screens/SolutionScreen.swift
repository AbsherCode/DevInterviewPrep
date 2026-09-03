//
//  SolutionScreen.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct SolutionScreen: View {
    let problemId: String
    
    var body: some View {
        VStack {
            switch problemId {
            // Algorithm Sub-views
            case "two_sum":
                TwoSumSolution()
            case "reverse_string":
                ReverseStringSolution()
            case "fizz_buzz":
                FizzBuzzSolution()
            case "palindrome_number":
                ReverseStringSolution()
            case "merge_two_sorted_lists":
                TwoSumSolution()
            case "roman_to_integer":
                ReverseStringSolution()
            case "valid_parentheses":
                TwoSumSolution()
                
            // UIKit / SwiftUI Component Views
            case "custom_button":
                ButtonExample()
                
            case "custom_card":
                CardExample()
                
            case "custom_stepper":
                CustomStepperDemoView()
                
            default:
                Text("Sandbox module configuration target error.")
            }
        }
        .navigationTitle(viewTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var viewTitle: String {
        if let title = ProblemProvider.problems.first(where: { $0.id == problemId })?.title { return title }
        if let name = ComponentProvider.components.first(where: { $0.id == problemId })?.name { return name }
        return "Detail Hub"
    }
}
