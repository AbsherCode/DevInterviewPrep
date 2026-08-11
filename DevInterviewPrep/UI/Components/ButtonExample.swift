//
//  ButtonExample.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct ButtonExample: View {
    let sourceCode = """
    VStack(spacing: 12) {
        Button(action: {}) {
            Text("Filled Button (Primary)")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
        
        Button(action: {}) {
            Text("Outlined Button")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
        
        Button("Plain Text Action", action: {})
    }
    """.trimmingCharacters(in: .whitespacesAndNewlines)
    
    var body: some View {
        CodePreviewWrapper(codeString: sourceCode) {
            VStack(spacing: 12) {
                Button(action: {}) {
                    Text("Filled Button (Primary)")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {}) {
                    Text("Outlined Button")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                
                Button("Plain Text Action", action: {})
                    .padding(.top, 4)
            }
            .padding(.top, 16)
        }
    }
}
