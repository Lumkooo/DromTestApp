//
//  ImagesListView.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

protocol IImagesListView: AnyObject {

}

final class ImagesListView: UIView {

    // MARK: - Init

    init() {
        super.init(frame: .zero)
        self.backgroundColor = .systemBackground
        self.setupElements()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - IImagesListView

extension ImagesListView: IImagesListView {

}

// MARK: - UISetup

private extension ImagesListView {
    func setupElements() {

    }
}
