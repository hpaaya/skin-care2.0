//
//  cosmeticResult.swift
//  skin care
//
//  Created by User14 on 2019/1/9.
//  Copyright © 2019 com. All rights reserved.
//

import Foundation

struct Cosmetic: Codable{
    var name: String
    var imageURL: URL
    var description: String
}

struct CosmeticResults: Codable {
    var resultCount: Int
    var result: [Cosmetic]
}
