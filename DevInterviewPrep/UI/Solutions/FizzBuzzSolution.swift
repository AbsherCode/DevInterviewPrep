//
//  FizzBuzzSolution.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/31/26.
//

import SwiftUI

struct FizzBuzzSolution: View {
    // State to track whether the solution is revealed
    @State private var showSolution = false
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // 1. Problem Title & Description
                    Text("3. Fizz Buzz")
                        .font(.title)
                        .bold()
                    
                    Text("Print numbers from 1 to n, replacing multiples of 3 with \"Fizz\", 5 with \"Buzz\", and both with \"FizzBuzz\".")
                        .font(.body)
                    
                    // 2. Example Box
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Example 1:")
                            .font(.headline)
                        Text(#"**Input:** n = 3"#)
                        Text(#"**Output:** ["1","2","Fizz"]"#)
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)
                    
                    // 2. Example Box
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Example 2:")
                            .font(.headline)
                        Text(#"**Input:** n = 5"#)
                        Text(#"**Output:** ["1","2","Fizz","4","Buzz"]"#)
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)
                    
                    // 2. Example Box
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Example 3:")
                            .font(.headline)
                        Text(#"**Input:** n = 15"#)
                        Text(#"**Output:** ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]"#)
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)
                    
                    Divider()
                    
                    // 3. Action Button
                    Button(action: {
                        withAnimation {
                            showSolution.toggle()
                        }
                    }) {
                        Text(showSolution ? "Hide Solution" : "Reveal Solution")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(showSolution ? Color.red : Color.blue)
                            .cornerRadius(10)
                    }
                    
                    // 4. Conditional Solution View
                    if showSolution {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Swift Solution")
                                .font(.title2)
                                .bold()
                            
                            // Code blocks are best formatted with standard font
                            Text(#"""
                            func generateFizzBuzz() {
                                guard let n = Int(inputNumber), n > 0 else {
                                            fizzBuzzResult = ["Invalid Input"]
                                            return
                                        }
                                        
                                        var result: [String] = []
                                        
                                        for i in 1...n {
                                            if i % 3 == 0 && i % 5 == 0 {
                                                result.append("FizzBuzz")
                                            } else if i % 3 == 0 {
                                                result.append("Fizz")
                                            } else if i % 5 == 0 {
                                                result.append("Buzz")
                                            } else {
                                                result.append(String(i))
                                            }
                                        }
                                        
                                        fizzBuzzResult = result
                                    }
                            }
                            """#)
                            .font(.system(.body, design: .monospaced))
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            
                            Text("**Complexity:** Time: $O(N)$, Space: $O(1)$")
                                .font(.callout)
                                .foregroundColor(.secondary)
                        }
                        .transition(.opacity.combined(with: .move(edge: .top)))
                        .id("solution")
                    }
                }
                .padding()
            }
            .onChange(of: showSolution) { oldValue, newValue in
                guard newValue else { return }
                withAnimation {
                    proxy.scrollTo("solution", anchor: .bottom)
                }
            }
        }
        .navigationTitle("Problem Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Preview Provider for Canvas testing
struct FizzBuzzProblemDetailView: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FizzBuzzSolution()
        }
    }
}
