//
//  UserStatistics.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation

struct UserStatistics {
  let user: User
  let habitCounts: [HabitCount]
}

extension UserStatistics: Codable {}
