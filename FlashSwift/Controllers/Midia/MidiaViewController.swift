//
//  MidiaViewController.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 15/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import UIKit

class MidiaViewController: UIViewController, ModelDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos = [Video]()
    var model = ApiModelMidia()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set itself as datasource and the delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        model.getVideos()
        model.delegate = self
             
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Confirm that a video was selected
        guard tableView.indexPathForSelectedRow != nil else {return}
        
        // Get a reference to the video that was tapped on
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        // Get a reference to the detail view controller
        let detailVC = segue.destination as! DetailMidiaViewController // swiftlint:disable:this force_cast
        
        // Set the video property of the detail view controller
        detailVC.video = selectedVideo
    }
    
    // MARK: - Model Delegate Methods
        
        func videosFetched(_ videos: [Video]) {
            
            // Set the returned videos to our video property
            self.videos = videos
            
            // Refresh the tableview
            tableView.reloadData()
       
        }
}

// MARK: - TableView Methods

extension MidiaViewController : UITableViewDelegate, UITableViewDataSource {

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cte.videoCell , for: indexPath) as! VideoTableViewCell // swiftlint:disable:this force_cast
            
            // Configure the cell with the data
            let video = self.videos[indexPath.row]
            cell.setCell(video)
            cell.layer.masksToBounds = true
            cell.layer.borderColor = UIColor(named: "shadow")?.cgColor
            cell.layer.shadowOffset = CGSize(width: -1, height: 1)
            cell.layer.borderWidth = 4.0
            cell.layer.cornerRadius = 35.0
          
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        }
}
