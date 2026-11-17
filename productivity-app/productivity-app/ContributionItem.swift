//
//  ContributionItem.swift
//  productivity-app
//
//  Created by csuftitan on 11/16/26.
//

import SwiftUI
import SwiftData

enum ItemCategory: String, Codable, CaseIterable, Identifiable {
    case school = "School"
    case work = "Work"
    case personal = "Personal"
    
    var id: String { rawValue }
}

extension ItemCategory {
    var color: Color {
        switch self {
        case .school: .orange
        case .work: .blue
        case .personal: .purple
        }
    }
}

@Model
class ContributionItem {
    var title: String
    var createdAt: Date
    var isCompleted: Bool
    var dueDate: Date?
    var category: ItemCategory
    
    init(title: String, category: ItemCategory = .personal, dueDate: Date? = nil) {
        self.title = title
        self.category = category
        self.createdAt = .now
        self.isCompleted = false
        self.dueDate = dueDate
    }
}
