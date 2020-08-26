//
//  TopicsViewController.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 16/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController {
    
    var tips = TopicsModel.itemsMock()
    var indexSection : Int = 1
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - User Defaults
        let isFirstLaunch = (UserDefaults.standard.value(forKey: "FirstLaunch") as? Bool) ?? false
        if !isFirstLaunch {
            UserDefaults.standard.set(true, forKey: "FirstLaunch")
            performSegue(withIdentifier: Cte.OnboardingSegue, sender: nil)
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Cte.tipsSegue {
            // Confirm that a tip was selected
            guard let indexPathForSelectedRow = tableView.indexPathForSelectedRow else { return }
           
            // Get a reference to the tip that was tapped on
            
            let selectedTips = tips[indexPathForSelectedRow.section].text[indexPathForSelectedRow.row]
            let selectedTipsTitle = tips[indexPathForSelectedRow.section].title[indexPathForSelectedRow.row]
            
            // Get a reference to the detail view controller
            let detailVC = segue.destination as! TipsViewController // swiftlint:disable:this force_cast
            
            // Set the video property of the detail view controller
            detailVC.selectedTips = selectedTips
            detailVC.selectedTipsTitle = selectedTipsTitle
            
        }
        
    }
    
}

// MARK: - TableView Methods

extension TopicsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tips.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tips[section].title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cte.topicCell, for: indexPath)
        cell.textLabel?.text = tips[indexPath.section].title[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = UIColor.init(named: "BG")
        let lbl = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width, height: 40))
        lbl.font = UIFont.boldSystemFont(ofSize: 17)
        lbl.textColor = UIColor(named: "swiftColor")
        lbl.text = tips[section].section
        view.addSubview(lbl)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: Cte.tipsSegue, sender: self)
    }
    
}
