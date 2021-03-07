//
//  ImagesListInteractorTest.swift
//  DromTestAppTests
//
//  Created by Андрей Шамин on 3/7/21.
//

import Foundation
@testable import DromTestApp

class ImagesListInteractorTest: IImagesListInteractor {

    // MARK: - Properties

    private(set) var isInitialDataLoading: Bool = false
    private(set) var isDataReloaded: Bool = false
    private(set) var isRemovedAtIndex: Bool = false
    private(set) var removingIndex: IndexPath = IndexPath()

    // MARK: - Public methods

    func loadInitData() {
        self.isInitialDataLoading = true
    }

    func reloadData() {
        self.isDataReloaded = true
    }

    func removeAt(indexPath: IndexPath) {
        self.isRemovedAtIndex = true
        self.removingIndex = indexPath
    }
}
