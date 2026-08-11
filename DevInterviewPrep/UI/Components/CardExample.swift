//
//  CardExample.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct CardExample: View {
    // Multi-line raw string displaying the implementation layout to the user
    let cardCode = """
    VStack(alignment: .leading, spacing: 8) {
        Text("SwiftUI Rounded Container Card")
            .font(.headline)
            .foregroundColor(.primary)
        
        Text("This container card mimics custom design specs by pairing padding structures with background clipping modifiers optimized for cross-platform rendering.")
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
    .padding()
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color(.systemSecondaryGroupedBackground))
    .cornerRadius(12)
    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    """.trimmingCharacters(in: .whitespacesAndNewlines)

    var body: some View {
        CodePreviewWrapper(codeString: cardCode) {
            VStack(alignment: .leading, spacing: 8) {
                Text("SwiftUI Rounded Container Card")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text("This container card mimics custom design specs by pairing padding structures with background clipping modifiers optimized for cross-platform rendering.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            // System background that adapts perfectly to light/dark system changes
            .background(Color(uiColor: .secondarySystemGroupedBackground))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
            .padding(.top, 16)
        }
    }
}
