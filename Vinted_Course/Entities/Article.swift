//
//  Article.swift
//  Vinted_Course
//
//  Created by Hugo Bordais on 5/28/19.
//  Copyright © 2019 Hugo Bordais. All rights reserved.
//

// Stuct n'a pas besoin de constructeur avec les "let" alors que avec les classes nous devons créer des constructeurs

import Foundation

enum ArticleSizeType {
    case shoes(Double)
    case clothings(ClothingSize)
}

enum ClothingSize {
    case XS, S, M, L, XL, XXL
}

struct Article {
    let userProfilUrl: String
    let username: String
    let articleImageUrl: String
    let price: Double
    let brandName: String
    let size: ArticleSizeType
}
