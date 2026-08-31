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
        AlgoProblem(id: "reverse_string", title: "Reverse String", difficulty: .easy, description: "Reverse an array of characters in-place."),
        AlgoProblem(id: "fizz_buzz", title: "Fizz Buzz", difficulty: .easy, description: "Print numbers from 1 to n, replacing multiples of 3 with \"Fizz\", 5 with \"Buzz\", and both with \"FizzBuzz\"."),
        AlgoProblem(id: "palindrome_number", title: "Palindrome Number", difficulty: .easy, description: "Check if an integer reads the same backward as forward."),
        AlgoProblem(id: "merge_two_sorted_lists", title: "Merge Two Sorted Lists", difficulty: .easy, description: "Combine two sorted linked lists into one single sorted list."),
        AlgoProblem(id: "roman_to_integer", title: "Roman to Integer", difficulty: .easy, description: "Convert a Roman numeral into an integer value."),
        AlgoProblem(id: "valid_parentheses", title: "Valid Parentheses", difficulty: .easy, description: "Determine if an input string of brackets is valid and properly closed."),
    ]
}

struct ComponentProvider {
    static let components = [
        ComponentExample(id: "custom_button", name: "Interactive Buttons", category: "Inputs", description: "Examples of Filled, Outlined, and Plain buttons."),
        ComponentExample(id: "custom_card", name: "Complex Cards", category: "Surfaces", description: "Styled custom containers showcasing layout hierarchy.")
    ]
}

