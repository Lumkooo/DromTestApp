//
//  ImagesListPresenter.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import Foundation

protocol IImagesListPresenter {

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

}

// MARK: - IImagesListInteractorOuter

extension ImagesListPresenter: IImagesListInteractorOuter {

}
