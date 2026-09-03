//
//  PickerExample.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 9/2/26.
//

import SwiftUI

struct PickerExample: View {
    @State private var favoriteColor: Int = 0
    private let colors: [String] = ["Red", "Green", "Blue"]

    // Show the same code that's rendered below
    let sourceCode = """
    @State private var favoriteColor: Int = 0
    private let colors: [String] = ["Red", "Green", "Blue"]

    Picker("Favorite Color", selection: $favoriteColor) {
        ForEach(Array(colors.enumerated()), id: .offset) { index, color in
            Text(color).tag(index)
        }
    }
    .pickerStyle(.segmented)
    """

    var body: some View {
        CodePreviewWrapper(codeString: sourceCode) {
            VStack(spacing: 12) {
                Picker("Favorite Color", selection: $favoriteColor) {
                    ForEach(Array(colors.enumerated()), id: \.offset) { index, color in
                        Text(color)
                            .tag(index)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding()
        }
    }
}

#Preview {
    PickerExample()
}
