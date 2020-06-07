//
//  ViewController.swift
//  Top News_app
//
//  Created by DDDD on 07/06/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // hit the API endpoint
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=18c65604ff8e48508b04fd0586666cbf"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //checking for potential errors
            if error == nil && data != nil {
                
                //parsing JSON
                let decoder = JSONDecoder()
               
                do {
                    
                  let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    
                    print(newsFeed)
                }
                
                catch {
                    print("There was an error discovered when parsing the JSON data")
                }
                
            }
        }
        // starting the dataTask
        dataTask.resume()
    }
}

