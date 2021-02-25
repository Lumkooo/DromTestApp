//
//  ImagesListInteractor.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import Foundation

protocol IImagesListInteractor {

}

protocol IImagesListInteractorOuter: AnyObject {

}

final class ImagesListInteractor {

    // MARK: - Properties

    weak var presenter: IImagesListInteractorOuter?
}

// MARK: - IImagesListInteractor

extension ImagesListInteractor: IImagesListInteractor {

}
