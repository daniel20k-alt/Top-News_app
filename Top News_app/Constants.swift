//
//  Constants.swift
//  Top News_app
//
//  Created by DDDD on 07/06/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "18c65604ff8e48508b04fd0586666cbf"
    static var COUNTRY_ID = "us"
    static var CATEGORY_ID = "business"
    static var API_URL = "https://newsapi.org/v2/top-headlines?country=\(COUNTRY_ID)&category=\(CATEGORY_ID)&apiKey=\(API_KEY)"
}
