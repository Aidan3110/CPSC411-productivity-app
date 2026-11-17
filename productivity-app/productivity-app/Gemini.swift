//
//  Gemini.swift
//  productivity-app
//
//  Created by csuftitan on 11/16/26.
//

import Foundation

struct ParsedContribution: Codable {
    var title: String
    var category: String
    var dueDate: String?
    var durationMinutes: Int?
}
