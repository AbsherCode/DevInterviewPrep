//
//  ComponentListScreen.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 8/11/26.
//

import SwiftUI

struct ComponentListScreen: View {
    var body: some View {
        List(ComponentProvider.components) { item in
            NavigationLink(value: item.id) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.name)
                        .font(.headline)
                    Text("Category: \(item.category)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(item.description)
                        .font(.body)
                        .lineLimit(2)
                }
                .padding(.vertical, 4)
            }
        }
        .listStyle(.plain)
    }
}
