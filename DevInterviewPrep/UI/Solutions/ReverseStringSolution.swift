//
//  ReverseStringSolution.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct ReverseStringSolution: View {
    // State to track whether the solution is revealed
    @State private var showSolution = false
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // 1. Problem Title & Description
                    Text("2. Reverse String")
                        .font(.title)
                        .bold()
                    
                    Text("Write a function that reverses a string. The input string is given as an array of characters s. You must do this by modifying the input array in-place with O(1) extra memory.")
                        .font(.body)
                    
                    // 2. Example Box
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Example 1:")
                            .font(.headline)
                        Text(#"**Input:** s = ["h","e","l","l","o"]"#)
                        Text(#"**Output:** ["o","l","l","e","h"]"#)
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
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
                            func reverseString(_ s: inout [Character]) {
                                var left = 0
                                var right = s.count - 1
                                
                                while left < right {
                                    s.swapAt(left, right)
                                    left += 1
                                    right -= 1
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
struct ReverseStringProblemDetailView: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReverseStringSolution()
        }
    }
}
