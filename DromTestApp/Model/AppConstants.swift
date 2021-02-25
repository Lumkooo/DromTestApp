//
//  AppConstants.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

enum AppConstants {

    // MARK: - Images

    enum Images {
        static let errorLoadingImages = UIImage(named: "ErorrImage")
    }

    // MARK: - Constants

    enum Constraints {
        static let quarterNormalAnchorConstaint: CGFloat = 4
        static let halfNormalAnchorConstaint: CGFloat = 8
        static let normalAnchorConstant: CGFloat = 16
        static let twiceNormalAnchorConstant: CGFloat = 32
        static let insets: CGFloat = 10
    }

    // MARK: - AnimationTime

    enum AnimationTime {
        static let collectionViewCellSlideAnimation: Double = 0.3
    }
}
