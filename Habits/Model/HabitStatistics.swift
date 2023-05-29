//
//  HabitStatistics.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation

struct HabitStatistics {
  let habit: Habit
  let userCounts: [UserCount]
}

extension HabitStatistics: Codable {}
