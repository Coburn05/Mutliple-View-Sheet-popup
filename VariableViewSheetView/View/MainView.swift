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
    @State private var tabSheetStates: [ListTab: Bool] = [:]
    @State private var selectedTab: ListTab? = nil
    
    var body: some View {
        ForEach(ListTab.allCases, id: \.id) { tab in
            Button(action: {
                selectedTab = tab
                tabSheetStates[tab] = true
            }, label: {
                HStack {
                    Text(tab.title)
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .foregroundColor(.primary)

                }
                .padding(.horizontal)
            })
            .sheet(isPresented: Binding(
                get: { tabSheetStates[tab] ?? false },
                set: { tabSheetStates[tab] = $0 }
            )) {
                SheetView(content: AnyView(tab.tabView))
            }
        }
    }
}

#Preview {
    MainView()
}
