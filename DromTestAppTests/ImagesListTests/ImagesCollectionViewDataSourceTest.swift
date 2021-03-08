//
//  ImagesCollectionViewDataSourceTest.swift
//  DromTestAppTests
//
//  Created by Андрей Шамин on 3/8/21.
//

import XCTest
@testable import DromTestApp

class ImagesCollectionViewDataSourceTest: XCTestCase {

    var imagesCollectionViewDataSource: ImagesCollectionViewDataSource!

    override func setUp() {
        super.setUp()
        self.imagesCollectionViewDataSource = ImagesCollectionViewDataSource()
    }

    override func tearDown() {
        self.imagesCollectionViewDataSource = nil
        super.tearDown()
    }


    func testImagesCollectionViewDataSourceSetData() throws {
        let stringURLs = ["firstURL",
                          "secondURL",
                          "thirdURL"]
        self.imagesCollectionViewDataSource!.setData(stringURLs: stringURLs)
        XCTAssertEqual(stringURLs,
                       self.imagesCollectionViewDataSource.stringURLs,
                       "String URLs array's are not the same")
    }

    func testImagesCollectionViewDataSourceRemoveAt() throws {
        let stringURLs = ["firstURL",
                          "secondURL",
                          "thirdURL"]
        self.imagesCollectionViewDataSource!.setData(stringURLs: stringURLs)
        XCTAssertEqual(stringURLs,
                       self.imagesCollectionViewDataSource.stringURLs,
                       "String URLs array's are not the same")

        self.imagesCollectionViewDataSource!.removeAt(indexPath: IndexPath(row: 2, section: 0))
        XCTAssertEqual(stringURLs.count - 1,
                       self.imagesCollectionViewDataSource.stringURLs.count,
                       "String URLs array's are not the same after removing")
    }

    // Тест на удаление элемента массива с индекса, выходящего за предел массива

    func testImagesCollectionViewDataSourceRemoveAtOutOfRange() throws {
        let stringURLs = ["firstURL",
                          "secondURL",
                          "thirdURL"]
        self.imagesCollectionViewDataSource!.setData(stringURLs: stringURLs)
        XCTAssertEqual(stringURLs,
                       self.imagesCollectionViewDataSource.stringURLs,
                       "String URLs array's are not the same")

        // Пытаемся удалить запись с индекса stringURLs.count + 1, чтобы выйти за границу массива
        self.imagesCollectionViewDataSource!.removeAt(indexPath: IndexPath(row: stringURLs.count + 1,
                                                                           section: 0))
        XCTAssertEqual(stringURLs.count,
                       self.imagesCollectionViewDataSource.stringURLs.count,
                       "String URLs array's are not the same after attempt to remove")
    }

    // Тест на удаление элемента, находящегося в конце массива
    func testImagesCollectionViewDataSourceRemoveAtTheEnd() throws {
        let stringURLs = ["firstURL",
                          "secondURL",
                          "thirdURL"]
        self.imagesCollectionViewDataSource!.setData(stringURLs: stringURLs)
        XCTAssertEqual(stringURLs,
                       self.imagesCollectionViewDataSource.stringURLs,
                       "String URLs array's are not the same")

        self.imagesCollectionViewDataSource!.removeAt(indexPath: IndexPath(row: stringURLs.count - 1,
                                                                           section: 0))
        XCTAssertEqual(stringURLs.count - 1,
                       self.imagesCollectionViewDataSource.stringURLs.count,
                       "String URLs array's are not the same after attempt to remove")
    }

    // Тест на удаление элемента в начальной позиции
    func testImagesCollectionViewDataSourceRemoveAtZero() throws {
        let stringURLs = ["firstURL",
                          "secondURL",
                          "thirdURL"]
        self.imagesCollectionViewDataSource!.setData(stringURLs: stringURLs)
        XCTAssertEqual(stringURLs,
                       self.imagesCollectionViewDataSource.stringURLs,
                       "String URLs array's are not the same")

        self.imagesCollectionViewDataSource!.removeAt(indexPath: IndexPath(row: 0,
                                                                           section: 0))
        XCTAssertEqual(stringURLs.count - 1,
                       self.imagesCollectionViewDataSource.stringURLs.count,
                       "String URLs array's are not the same after attempt to remove")
    }
}
