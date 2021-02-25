//
//  ImagesListPresenter.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import Foundation

protocol IImagesListPresenter {
    func viewDidLoad(ui: IImagesListView)
}

final class ImagesListPresenter {

    // MARK: - Properties

    private let interactor: IImagesListInteractor
    private let router: IImagesListRouter
    private weak var ui: IImagesListView?

    // MARK: - Init

    init(interactor: IImagesListInteractor, router: IImagesListRouter) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - IImagesListPresenter

extension ImagesListPresenter: IImagesListPresenter {
    func viewDidLoad(ui: IImagesListView) {
        self.ui = ui
        self.ui?.cellWasSelectedAt = { [weak self] (indexPath) in
            self?.interactor.removeAt(indexPath: indexPath)
        }
        self.ui?.refreshControlDidChangedValue = { [weak self] in
            self?.interactor.reloadData()
        }
        self.interactor.loadInitData()
    }
}

// MARK: - IImagesListInteractorOuter

extension ImagesListPresenter: IImagesListInteractorOuter {
    func prepareView(stringURLs: [String]) {
        self.ui?.setupView(stringURLs: stringURLs)
    }

    func removeAt(indexPath: IndexPath) {
        self.ui?.removeCellAt(indexPath: indexPath)
    }

    func reloadView(stringURLs: [String]) {
        self.ui?.reloadCollectionView(stringURLs: stringURLs)
    }
}
