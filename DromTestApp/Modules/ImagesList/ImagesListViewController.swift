//
//  ViewController.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

// MARK: - Задание

//Разработать приложение на Swift / Objective-C для iPhone без использования Interface Builder и SwiftUI, версия iOS 10.0+, без использования сторонних фреймворков, только iOS SDK.
//
//1) Необходимо создать приложение, основанное на UINavigationController, с поддержкой горизонтальной и вертикальной ориентации. DONE
//2) Во ViewController'е разместить UICollectionView, количество ячеек - 6, ширина ячейки - ширина экрана с полями по 10 пикселей со всех сторон. Высота ячейки равна ширине. DONE
//3) В каждую ячейку загрузить асинхронно по мере необходимости (при появлении на экране) картинку с Интернета (любую, но не меньше 800 пикселей в ширину и 600 в высоту). DONE
//4) Если картинка хоть раз загрузилась, то она должна показываться потом даже без соединения с Интернетом (оффлайн кэш). DONE
//5) При нажатии на ячейку, в которой уже загрузилась картинки, ячейка должна анимированно уезжать вправо до конца экрана, после чего все оставшиеся снизу ячейки должны сдвинуться анимированно вверх на одну ячейку, чтобы занять место удаленной ячейки. DONE
//6) Добавить к UICollectionView контролл "pull-to-refresh", который при активации должен полностью восстановить исходное состояние UICollectionView и заново загружать все скачанные ранее картинки (восстанавливать состояние можно без анимации). DONE

class ImagesListViewController: UIViewController {

    // MARK: - Properties

    private let presenter: IImagesListPresenter
    private let ui = ImagesListView()

    // MARK: - Init

    init(presenter: IImagesListPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - VC Lifecycle

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view = self.ui
        self.presenter.viewDidLoad(ui: self.ui)
    }
}
