//
//  CombinedStatistics.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation

struct CombinedStatistics {
  let userStatistics: [UserStatistics]
  let habitStatistics: [HabitStatistics]
}

extension CombinedStatistics: Codable{}
