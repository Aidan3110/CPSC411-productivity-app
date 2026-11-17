//
//  ContributionItem.swift
//  productivity-app
//
//  Created by csuftitan on 11/16/26.
//

import Foundation

enum ItemCategory: String, Codable, CaseIterable, Identifiable {
    case school = "School"
    case work = "Work"
    case personal = "Personal"
    
    var id: String { rawValue }
}

