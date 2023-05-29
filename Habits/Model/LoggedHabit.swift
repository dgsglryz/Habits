//
//  LoggedHabit.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation

struct LoggedHabit {
  let userID: String
  let habitName: String
  let timestamp: Date
}

extension LoggedHabit: Codable{}
