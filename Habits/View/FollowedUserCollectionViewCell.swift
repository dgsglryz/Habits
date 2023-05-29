//
//  FollowedUserCollectionViewCell.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation
import UIKit

class FollowedUserCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet var primaryTextLabel: UILabel!
  @IBOutlet var secondaryTextLabel: UILabel!
  @IBOutlet var separatorLineView: UIView!
  @IBOutlet var separatorLineheightConstraint: NSLayoutConstraint!
  
  override func awakeFromNib() {
    separatorLineheightConstraint.constant = 1 / UITraitCollection.current.displayScale
  }
}
