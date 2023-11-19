//
//  ListModel.swift
//  VariableViewSheetView
//
//  Created by Daniel Coburn on 11/18/23.
//

import Foundation
import SwiftUI

enum ListTabs: String, CaseIterable, Identifiable {
    case view1
    case view2
    case view3
    
    var id: String {
        rawValue
    }
}

extension ListTabs {
    var title: String {
        switch self {
        case .view1:
            return "View 1"
        case .view2:
            return "View 2"
        case .view3:
            return "View 3"
        }
    }
    
    var tabView: any View {
        switch self {
        case .view1:
            return View1()
        case .view2:
            return View2()
        case .view3:
            return View3()
        }
    }
}
