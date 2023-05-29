//
//  UICollectionViewDiffableDataSource+ViewModel.swift
//  Habits
//
//  Created by Dogus Guleryuz on 24.05.2023.
//

import Foundation
import UIKit

extension UICollectionViewDiffableDataSource {
  func applySnapshotUsing(sectionIDs: [SectionIdentifierType], itemsBySection: [SectionIdentifierType: [ItemIdentifierType]], sectionsRetainedIfEmpty: Set<SectionIdentifierType> = Set<SectionIdentifierType>()) {
    
    applySnapshotUsing(sectionIDs: sectionIDs, itemsBySection: itemsBySection, animatingDifferences: true, sectionRetainedIfEmpty: sectionsRetainedIfEmpty)
  }
  
  func applySnapshotUsing(sectionIDs: [SectionIdentifierType], itemsBySection: [SectionIdentifierType: [ItemIdentifierType]], animatingDifferences: Bool, sectionRetainedIfEmpty: Set<SectionIdentifierType> = Set<SectionIdentifierType>()) {
    var snapshot = NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>()
    
    for sectionID in sectionIDs {
      guard let sectionItems = itemsBySection[sectionID], sectionItems.count > 0 || sectionRetainedIfEmpty.contains(sectionID) else {
        continue
      }
      snapshot.appendSections([sectionID])
      snapshot.appendItems(sectionItems, toSection: sectionID)
      snapshot.reloadItems(sectionItems)
    }
    self.apply(snapshot, animatingDifferences: animatingDifferences)
  }
}
