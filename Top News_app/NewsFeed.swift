//
//  NewsFeed.swift
//  Top News_app
//
//  Created by DDDD on 07/06/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import Foundation

struct NewsFeed: Codable {
    
    var status: String = ""
    var totalResults: Int = 0
    var articles:[Article]?
    
}
