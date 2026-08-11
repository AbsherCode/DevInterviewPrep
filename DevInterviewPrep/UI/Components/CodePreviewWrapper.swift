//
//  CodePreviewWrapper.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct CodePreviewWrapper<Content: View>: View {
    let codeString: String
    let liveContent: Content
    
    @State private var showCode = false
    
    init(codeString: String, @ViewBuilder liveContent: () -> Content) {
        self.codeString = codeString
        self.liveContent = liveContent()
    }
    
    var body: some View {
        VStack(spacing: 16) {
            // Segmented Switcher Toggle
            Picker("View Selection", selection: $showCode) {
                Text("Live Preview").tag(false)
                Text("Source Code").tag(true)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            // Render Window Block
            Group {
                if showCode {
                    // Dark theme source snippet container
                    ScrollView([.vertical, .horizontal]) {
                        Text(codeString)
                            .font(.system(.caption, design: .monospaced))
                            .foregroundColor(Color(red: 0.83, green: 0.83, blue: 0.83))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }
                    .background(Color(red: 0.12, green: 0.12, blue: 0.12))
                    .cornerRadius(12)
                } else {
                    // Actual native interactive View layout
                    liveContent
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}
