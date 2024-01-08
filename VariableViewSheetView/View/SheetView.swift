//
//  SheetView.swift
//  VariableViewSheetView
//
//  Created by Daniel Coburn on 11/18/23.
//

import SwiftUI

struct SheetView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    var content: AnyView
    
    // MARK: - BODY
    
    var body: some View {
        
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("CLOSE")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
        })
        
        content
    }
}
