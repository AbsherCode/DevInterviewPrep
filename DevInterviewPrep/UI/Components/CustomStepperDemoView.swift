//
//  CustomStepperDemoView.swift
//  DevInterviewPrep
//
//  Created by Marcus Absher on 9/2/26.
//
import SwiftUI

struct CustomStepperDemoView: View {
    @State var itemQuantity = 1
    @State var ticketCount = 2
    
    var body: some View {
        Form {
            Section("Shopping Cart") {
                CustomStepperExample(
                    value: $itemQuantity,
                    in: 1...10,
                    label: "Items: \(itemQuantity)",
                    tintColor: .orange
                )
            }
            
            Section("Event Booking") {
                CustomStepperExample(
                    value: $ticketCount,
                    in: 0...5,
                    step: 1,
                    label: "VIP Tickets",
                    tintColor: .indigo,
                    backgroundColor: Color(.systemGroupedBackground)
                )
            }
        }
    }
}
