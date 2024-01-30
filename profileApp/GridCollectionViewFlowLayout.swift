//
//  GridCollectionViewFlowLayout.swift
//  profileApp
//
//  Created by 윤규호 on 1/30/24.
//

import UIKit

class GridCollectionViewFlowLayout: UICollectionViewFlowLayout {
    var ratioHeightToWidth = 1.0
    var numberOfColumns = 3
    var cellSpacing = 0.0 {
        didSet {
            self.minimumLineSpacing = self.cellSpacing
            self.minimumInteritemSpacing = self.cellSpacing
        }
    }
    
    override init() {
        super.init()
        self.scrollDirection = .vertical
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
