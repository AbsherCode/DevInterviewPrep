//
//  ToggleExample.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 9/2/26.
//

import SwiftUI

struct ToggleExample: View {
    @State private var isFlagged: Bool = false
    @State private var isMuted: Bool = false
    @State private var isShuffling: Bool = false
    @State private var isRepeating: Bool = false
    @State private var isEnhanced: Bool = false

    let sourceCode = """
    // This view demonstrates several Toggle styles.
    VStack(spacing: 12) {
        Toggle("Toggle", isOn: .constant(true))
            .toggleStyle(SwitchToggleStyle())
        Toggle("Toggle", isOn: .constant(true))
            // Using a built-in style for compatibility; replace with a custom style if desired.
            .toggleStyle(.automatic)
        Spacer()
        HStack {
            Toggle(isOn: $isFlagged) {
                Label("Flag", systemImage: "flag.fill")
            }
            Toggle(isOn: $isMuted) {
                Label("Mute", systemImage: "speaker.slash.fill")
            }
        }
        .toggleStyle(.button)
        HStack {
            Toggle(isOn: $isShuffling) {
                Label("Shuffle", systemImage: "shuffle")
            }
            Toggle(isOn: $isRepeating) {
                Label("Repeat", systemImage: "repeat")
            }

            Divider()

            Toggle("Enhance Sound", isOn: $isEnhanced)
                .toggleStyle(.automatic) // Revert to the default style.
            }
            .toggleStyle(.button) // Use button style for toggles in the stack.
            .labelStyle(.iconOnly)
    }
    """

    var body: some View {
        CodePreviewWrapper(codeString: sourceCode) {
            VStack(spacing: 12) {
                Toggle("Toggle", isOn: .constant(true))
                    .toggleStyle(SwitchToggleStyle())
                Toggle("Toggle", isOn: .constant(true))
                    // Using a built-in style for compatibility; replace with a custom style if you add one.
                    .toggleStyle(.automatic)
                Spacer()
                HStack {
                    Toggle(isOn: $isFlagged) {
                        Label("Flag", systemImage: "flag.fill")
                    }
                    Toggle(isOn: $isMuted) {
                        Label("Mute", systemImage: "speaker.slash.fill")
                    }
                }
                .toggleStyle(.button)
                HStack {
                    Toggle(isOn: $isShuffling) {
                        Label("Shuffle", systemImage: "shuffle")
                    }
                    Toggle(isOn: $isRepeating) {
                        Label("Repeat", systemImage: "repeat")
                    }

                    Divider()

                    Toggle("Enhance Sound", isOn: $isEnhanced)
                        .toggleStyle(.automatic) // Revert to the default style.
                }
                .toggleStyle(.button) // Use button style for toggles in the stack.
                .labelStyle(.iconOnly) // Omit the title from any labels.
            }
            .padding()
        }
    }
}

#Preview {
    ToggleExample()
}
