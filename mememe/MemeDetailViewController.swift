//
//  MemeDetailViewController.swift
//  mememe
//
//  Created by Brittany Sprabery on 8/26/16.
//  Copyright © 2016 Brittany Sprabery. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTopText: UILabel!
    @IBOutlet weak var detailBottomText: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.detailImageView!.image =  meme.memedImage
        detailTopText.text = meme.top
        detailBottomText.text = meme.bottom
        
        self.tabBarController?.tabBar.hidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.hidden = false
    }
}