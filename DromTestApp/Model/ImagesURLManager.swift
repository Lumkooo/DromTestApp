//
//  ImagesURLManager.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import Foundation

final class ImagesURLManager {
    // Смоделируем получение URL-ов из интернета,
    // поэтому вернем их блоком completion-а,
    // а не просто return
    func getImagesStringURL(completion: ([String]) -> Void) {
        let imagesURL: [String] = [
            "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,g_xy_center,h_535,q_50,w_1480,x_2243,y_1532/v1/clients/capecodma/7D205IMG_0206a_3f0b4b74-1544-4f4b-908f-d3982eb88906.jpg",
            "https://upload.wikimedia.org/wikipedia/commons/0/07/Jumping_Humpback_whale.jpg",
            "https://www.bostonherald.com/wp-content/uploads/2020/07/Wequassett2.jpg",
            "https://www.cityam.com/wp-content/uploads/2019/05/1200px-nantucket-08-2004-5bb7775b4f030.jpg",
            "https://static1.mansionglobal.com/production/media/article-images/6de06094cd363913d0d3af3834442f11/large_S1-EM067_CLARK1_M_20191219154410.jpg",
            "https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/cape-cod-nauset-lighthouse-juergen-roth.jpg"
        ]

        completion(imagesURL)
    }
}
