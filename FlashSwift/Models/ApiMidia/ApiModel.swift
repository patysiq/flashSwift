//
//  ApiModel.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 15/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

protocol ModelDelegate: AnyObject {
    func videosFetched(_ videos:[Video])
}

class ApiModelMidia {
    
    weak var delegate: ModelDelegate?
    
    func getVideos() {
        
        var allVideos: [Video] = []
        let channels = ["UC2D6eRvCeMtcF5OGHf1-trw","UCmJi5RdDLgzvkl3Ly0DRMlQ", "UCTfmK7YoPhSkRsIul50_rSA", "UCbTw29mcP12YlTt1EpUaVJw", "UCuP2vJ6kRutQBfRmdcI92mA", ""]
        
        //Get a data task from the URLSession object
        for channel in channels {
            
            //Create URL object
            let urlString = URL(string: "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=4&order=date&channelId=\(channel)&key=\(ApiKeys.apiMidia)")
            
            guard let url = urlString else {
                print(ApiError.invalidUrl)
                return
            }
            
            //Get URLSession object
            let session = URLSession.shared
            let dataTask = session.dataTask(with: url) { (data, response, error) in
                
                guard let response = response as?  HTTPURLResponse else {return}
                
                guard let data = data else {return}
                
                //check if there were any errors
                if error != nil {
                    print(ApiError.couldNotDecode)
                    return
                }
                
                do {
                    //Parsing the data into video objects
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    
                    let response = try decoder.decode(ResponseApiMidia.self, from: data)
                    
                    if response.items != nil {
                        DispatchQueue.main.async {
                            // Call the "videosFetched" method of the delegate
                            allVideos += response.items!
                            self.delegate?.videosFetched(allVideos)
                        }
                    }
                    
                    dump(response)
                    
                } catch {
                    print(ApiError.unknowEroor(statuscode: response.statusCode))
                }
                
            }
            //Kick off the task
            dataTask.resume()
        }
    }
    
}
