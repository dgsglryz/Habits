//
//  NamedSectionHeaderView.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation
import UIKit

class NamedSectionHeaderView: UICollectionReusableView {
  let nameLabel: UILabel = {
    let label = UILabel()
    label.textColor = .label
    label.font = UIFont.boldSystemFont(ofSize: 17)
    
    return label
  }()
  
  var _centerYconstraint: NSLayoutConstraint?
  var centerYconstraint: NSLayoutConstraint {
    if _centerYconstraint == nil{
      _centerYconstraint = nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
    }
    return _centerYconstraint!
  }
  
  var _topYConstraint: NSLayoutConstraint?
  var topYConstraint: NSLayoutConstraint{
    if _topYConstraint == nil {
      _topYConstraint = nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12)
    }
    return _topYConstraint!
  }
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupView(){
    backgroundColor = .systemGray5
    
    addSubview(nameLabel)
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  12)
    ])
    alignLabelToCenter()
  }
  
  func alignLabelToTop(){
    topYConstraint.isActive = true
    centerYconstraint.isActive = false
  }
  
  func alignLabelToCenter() {
    topYConstraint.isActive = false
    centerYconstraint.isActive = true
  }
}
