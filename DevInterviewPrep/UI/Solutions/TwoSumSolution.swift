//
//  TwoSumSolution.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct TwoSumSolution: View {
    // State to track whether the solution is revealed
    @State private var showSolution = false
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // 1. Problem Title & Description
                    Text("1. Two Sum")
                        .font(.title)
                        .bold()
                    
                    Text("Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.")
                        .font(.body)
                    
                    Text("You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.")
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    // 2. Example Box
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Example 1:")
                            .font(.headline)
                        Text("**Input:** nums = [2,7,11,15], target = 9")
                        Text("**Output:** [0, 1]")
                        Text("**Explanation:** Because nums[0] + nums[1] == 9, we return [0, 1].")
                            .font(.caption)
                            .foregroundColor(.secondary)
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
                            Text("""
                            func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
                                var seen = [Int: Int]()
                                
                                for (index, num) in nums.enumerated() {
                                    let complement = target - num
                                    if let complementIndex = seen[complement] {
                                        return [complementIndex, index]
                                    }
                                    seen[num] = index
                                }
                                return []
                            }
                            """)
                            .font(.system(.body, design: .monospaced))
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            
                            Text("**Complexity:** Time: $O(n)$, Space: $O(n)$")
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
struct ProblemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TwoSumSolution()
        }
    }
}

