//
//  ImagesListViewControllerTests.swift
//  DromTestAppTests
//
//  Created by Андрей Шамин on 3/7/21.
//

import XCTest
@testable import DromTestApp

class ImagesListViewControllerTests: XCTestCase {
    // MARK: - Properties

    private var sut: ImagesListViewController!
    private var presenter: ImagesListPresenterTest!

    // MARK: - Methods

    override func setUp() {
        super.setUp()
        self.presenter = ImagesListPresenterTest()
        let viewController = ImagesListViewController(presenter: self.presenter)
        self.sut = viewController
    }

    override func tearDown() {
        self.sut = nil
        self.presenter = nil

        super.tearDown()
    }

    func testViewDidAppear() throws {
        self.sut!.viewDidAppear(true)

        XCTAssertTrue(self.presenter!.isViewAppear, "View didn't appear")
    }
}
