//
//  ProductViewController.swift
//  AutoLayout
//
//  Created by Rinto Andrews on 03/04/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var paperback: UIButton!
    @IBOutlet weak var book: UIButton!
    @IBOutlet weak var kindle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            switch sender.tag {
            case 0:
                self.book.removeFromSuperview()
                self.kindle.removeFromSuperview()
            case 1:
                self.kindle.removeFromSuperview()
            case 2:
                self.book.removeFromSuperview()
            default:
                break
            }
            self.view.layoutIfNeeded()
        }
        
    }
    
}
