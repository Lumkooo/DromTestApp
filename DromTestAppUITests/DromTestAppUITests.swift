//
//  DromTestAppUITests.swift
//  DromTestAppUITests
//
//  Created by Андрей Шамин on 3/6/21.
//

import XCTest

class DromTestAppUITests: XCTestCase {
    func testSwipeTest() throws {
        let app = XCUIApplication()
        app.launch()
        let imagescollectionviewCollectionView = XCUIApplication().collectionViews["imagesCollectionView"]
        imagescollectionviewCollectionView.swipeUp()
        imagescollectionviewCollectionView.swipeDown()
    }
    
    func testDeleteCells() throws {
        let cellsCount: Int = 6
        let app = XCUIApplication()
        app.launch()
        let imagescollectionviewCollectionView = XCUIApplication().collectionViews["imagesCollectionView"]
        let collectionviewcellimageviewElement = imagescollectionviewCollectionView.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"collectionViewCellImageView").element
        for _ in 0..<cellsCount {
            collectionviewcellimageviewElement.tap()
        }
        XCTAssertEqual(app.collectionViews.cells.count, 0)
    }

    func testReloadCollectionView() throws {
        let cellsCount: Int = 6
        let app = XCUIApplication()
        app.launch()
        let imagescollectionviewCollectionView = XCUIApplication().collectionViews["imagesCollectionView"]
        let collectionviewcellimageviewElement = imagescollectionviewCollectionView.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"collectionViewCellImageView").element
        for _ in 0..<cellsCount {
            collectionviewcellimageviewElement.tap()
        }
        XCTAssertEqual(app.collectionViews.cells.count, 0)
        imagescollectionviewCollectionView.swipeDown()
        XCTAssertNotEqual(app.collectionViews.cells.count, 0)
    }
}
