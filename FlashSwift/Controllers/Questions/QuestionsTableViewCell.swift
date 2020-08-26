//
//  QuestionsTableViewCell.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 20/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageOwner: UIImageView!
    @IBOutlet weak var titleQuestion: UILabel!
    @IBOutlet weak var displayNameOwner: UILabel!
    @IBOutlet weak var reputationOwner: UILabel!
    var question: Question?
    
    static let nibName = "questionTableCell"
    static let identifier = "questionCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func prepareForReuse() {
        titleQuestion.text = ""
        displayNameOwner.text = ""
        reputationOwner.text = ""
    }

    func setCell(_ qut:Question) { 
        self.question = qut
        
        // Ensure that we have a video
        guard let question = self.question else {return}
        
        // Set the title Label
        if let title = question.title {
           self.titleQuestion.text = title
        }
        
        // Set the displayName Label
        if let name = question.owner?.displayName {
            self.displayNameOwner.text = "Name:\(name)"
        }
        
        // Set the reputation Label
        if let reputation = question.owner?.reputation {
            self.reputationOwner.text = String("Reputation: \(reputation)")
        }
     
        guard let linkProfileImage = self.question?.owner?.profileImage else {return}
        
        // Check cache before download data
        if let cachedData = CacheManagerQuestion.getQuestionCache(linkProfileImage) {
            // Set the thumbnail imageview
            self.profileImageOwner.image = UIImage(data: cachedData)
            return
        }
        
        // Download the thumbnail data
        guard let url = URL(string: linkProfileImage) else {return}
        
        //Get the shared URL Session object
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            
            guard let response = response as?  HTTPURLResponse else {return}
            
            guard let data = data else {return }
            
            if error != nil {
                print(ApiError.couldNotDecode)
            }
            
            switch response.statusCode {
            case 200:
                //Save the data in the cache
                CacheManagerQuestion.setQuestionCache(url.absoluteString, data)
                
                // Check that the donwloaded url matches the video thumbnail url that this cell is currently set to display
                if url.absoluteString != self.question?.owner?.profileImage {
                
                // Video cell has been recycled for another video and no longer matches the thumbnail that was downloaded
                    return
                }
                
                // Create the image object
                let question = UIImage(data: data)
                
                // Set the imageview
                DispatchQueue.main.async {
                    self.profileImageOwner.image = question
                }
            
            case 404:
            break
            default:
            break
            }
        }
             
        dataTask.resume()
    }
    
}
