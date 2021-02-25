//
//  ImagesListInteractor.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import Foundation

protocol IImagesListInteractor {
    func loadInitData()
    func removeAt(indexPath: IndexPath)
    func reloadData()
}

protocol IImagesListInteractorOuter: AnyObject {
    func prepareView(stringURLs: [String])
    func removeAt(indexPath: IndexPath)
    func reloadView(stringURLs: [String])
}

final class ImagesListInteractor {

    // MARK: - Properties

    weak var presenter: IImagesListInteractorOuter?
    private var stringURLs: [String] = []
    private let imagesURLManager = ImagesURLManager()
}

// MARK: - IImagesListInteractor

extension ImagesListInteractor: IImagesListInteractor {
    func loadInitData() {
        self.imagesURLManager.getImagesStringURL(completion: { (stringURLs) in
            self.stringURLs = stringURLs
            self.presenter?.prepareView(stringURLs: stringURLs)
        })
    }

    func removeAt(indexPath: IndexPath) {
        if self.stringURLs.count > indexPath.row {
            self.stringURLs.remove(at: indexPath.row)
            self.presenter?.removeAt(indexPath: indexPath)
        }
    }

    func reloadData() {
        self.imagesURLManager.getImagesStringURL(completion: { (stringURLs) in
            self.stringURLs = stringURLs
            self.presenter?.reloadView(stringURLs: stringURLs)
        })
    }
}