//
//  View1.swift
//  VariableViewSheetView
//
//  Created by Daniel Coburn on 11/18/23.
//

import SwiftUI

struct View1: View {
    var body: some View {
        VStack {
            Spacer()
            Text("view 1")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Spacer()
        }// Vstack
    }
}

#Preview {
    View1()
}
