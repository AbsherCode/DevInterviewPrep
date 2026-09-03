//
//  CustomStepperExample.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 9/2/26.
//

import SwiftUI

/// A custom, highly reusable stepper component for a component library.
public struct CustomStepperExample<Value: BinaryInteger>: View {
    // MARK: - Properties
    @Binding var value: Value
    public let range: ClosedRange<Value>
    public let step: Value
    public let label: String
    
    // Theme customization attributes
    public let tintColor: Color
    public let backgroundColor: Color
    
    @State private var isDecrementing: Bool = false
    @State private var isIncrementing: Bool = false
    
    // MARK: - Initializer
    public init(
        value: Binding<Value>,
        in range: ClosedRange<Value>,
        step: Value = 1,
        label: String = "",
        tintColor: Color = .blue,
        backgroundColor: Color = Color(.systemGray6)
    ) {
        self._value = value
        self.range = range
        self.step = step
        self.label = label
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
    }
    
    // MARK: - Body
    public var body: some View {
        HStack {
            if !label.isEmpty {
                Text(label)
                    .font(.body)
                    .foregroundColor(.primary)
                Spacer()
            }
            
            // The customized stepper control container
            HStack(spacing: 0) {
                Button(action: decrement) {
                    ZStack {
                        Image(systemName: "minus")
                            .font(.system(size: 14, weight: .bold))
                            .padding()
                            .frame(width: 44, height: 36)
                    }
                    .scaleEffect(isDecrementing ? 0.9 : 1.0)
                }
                .disabled(value <= range.lowerBound)
                
                Text("\(Int(value))")
                    .font(.body)
                    .fontWeight(.semibold)
                    .monospacedDigit()
                    .frame(minWidth: 32)
                
                Button(action: increment) {
                    ZStack {
                        Image(systemName: "plus")
                            .font(.system(size: 14, weight: .bold))
                            .padding()
                            .frame(width: 44, height: 36)
                    }
                    .scaleEffect(isIncrementing ? 0.9 : 1.0)
                }
                .disabled(value >= range.upperBound)
            }
            .foregroundColor(tintColor)
            .background(backgroundColor)
            .clipShape(Capsule())
        }
    }
    
    // MARK: - Helper Actions
    private func decrement() {
        if value > range.lowerBound {
            value -= step
            withAnimation(.spring(response: 0.15, dampingFraction: 0.7)) {
                isDecrementing = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
                withAnimation(.spring(response: 0.2, dampingFraction: 0.8)) {
                    isDecrementing = false
                }
            }
        }
    }
    
    private func increment() {
        if value < range.upperBound {
            value += step
            withAnimation(.spring(response: 0.15, dampingFraction: 0.7)) {
                isIncrementing = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
                withAnimation(.spring(response: 0.2, dampingFraction: 0.8)) {
                    isIncrementing = false
                }
            }
        }
    }
}

// MARK: - Preview Provider
#Preview {
    VStack(spacing: 20) {
        CustomStepperExample(
            value: .constant(5),
            in: 0...10,
            label: "Adults"
        )
        
        CustomStepperExample(
            value: .constant(2),
            in: 1...5,
            label: "Rooms (Step 1)",
            tintColor: .purple,
            backgroundColor: Color.purple.opacity(0.1)
        )
    }
    .padding()
}

