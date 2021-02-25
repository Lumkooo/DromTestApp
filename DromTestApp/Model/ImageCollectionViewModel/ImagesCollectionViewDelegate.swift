//
//  ImagesCollectionViewDelegate.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

protocol IImagesCollectionViewDelegate: class {
    func selectedCell(indexPath: IndexPath)
}

final class ImagesCollectionViewDelegate: NSObject {

    // MARK: - Properties

    private weak var delegate: IImagesCollectionViewDelegate?

    // MARK: - Init

    init(withDelegate delegate: IImagesCollectionViewDelegate) {
        self.delegate = delegate
    }
}

// MARK: - UICollectionViewDelegate

extension ImagesCollectionViewDelegate: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        let translationValue: CGFloat = 3000
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: AppConstants.AnimationTime.collectionViewCellSlideAnimation) {
            cell?.transform = CGAffineTransform(translationX: translationValue,
                                                y: 0)
        } completion: { _ in
            self.delegate?.selectedCell(indexPath: indexPath)
        }
    }
}
