//
//  DetailViewController.swift
//  MyFaveProducts
//
//  Created by cis290 on 9/17/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var productImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            if let photo = productImageView {
                if let label = detailDescriptionLabel {
                    label.text = detail.description
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

