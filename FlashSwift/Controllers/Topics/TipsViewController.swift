//
//  TipsViewController.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 16/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {
    
    @IBOutlet weak var tipsTitle: UILabel!
    @IBOutlet weak var tipsText: UITextView!
    
    var selectedTips: String = ""
    var selectedTipsTitle: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set fields
        tipsTitle.text = ""
        tipsText.text = ""
        
        // Set the title
        tipsTitle.text = selectedTipsTitle
        
        // Set the description
        tipsText.text = selectedTips
    }
}
