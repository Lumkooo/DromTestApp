//
//  ImagesListPresenter.swift
//  DromTestAppTests
//
//  Created by Андрей Шамин on 3/7/21.
//

import Foundation
@testable import DromTestApp

class ImagesListPresenterTest: IImagesListPresenter, IImagesListInteractorOuter {

    // MARK: - Properties

    private(set) var isViewAppear: Bool = false
    private(set) var isViewPrepared: Bool = false
    private(set) var isViewReloaded: Bool = false
    private(set) var isRemovedAtIndex: Bool = false
    private(set) var removedIndex: IndexPath = IndexPath()


    // MARK: - Public methods

    func viewDidAppear(ui: IImagesListView) {
        self.isViewAppear = true
    }

    func prepareView(stringURLs: [String]) {
        self.isViewPrepared = true
    }

    func removeAt(indexPath: IndexPath) {
        self.isRemovedAtIndex = true
        self.removedIndex = indexPath
    }

    func reloadView(stringURLs: [String]) {
        self.isViewReloaded = true
    }
}
