//
//  MainView.swift
//  VariableViewSheetView
//
//  Created by Daniel Coburn on 11/18/23.
//


import SwiftUI

// This view will contain the "variable sheet view"
// There will be multiple views the user can select
// The sheet view will be able to draw all of them

struct MainView: View {
    @State private var isTabOpen: Bool = false
    @State private var selectedTab = ListTabs.view1
    
    var body: some View {
        ForEach(ListTabs.allCases, id: \.id) { tab in
            Button(action: {
                selectedTab = tab
                isTabOpen = true
            }, label: {
                HStack {
                    Text(tab.title)
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .foregroundColor(.black)
                }
            })
            .sheet(isPresented: $isTabOpen, content: {
                SheetView(content: AnyView(selectedTab.tabView))
            })
        }
    }
}

#Preview {
    MainView()
}
