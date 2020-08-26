//
//  File.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 16/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import UIKit
import WebKit

class DetailMidiaViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var textView: UITextView!
    
    var video: Video?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Clear the fields
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        // Check if there's video
        guard let video = video else {return}
        
        // Create the embed URL
        let embedUrlString = Cte.ytEmbedUrl + video.videoId
        
        // Load it into the webview
        let url = URL(string: embedUrlString )
        let request = URLRequest(url: url!)
        webView.load(request)
        
        // Set the title
        titleLabel.text = video.title
        
        // Set the date
        let datef = DateFormatter()
        datef.dateFormat = "EEEE, MMM d, yyyyy"
        dateLabel.text = datef.string(from: video.publishedAt)
        
        // Set the description
        textView.text = video.description
    }
    
}
