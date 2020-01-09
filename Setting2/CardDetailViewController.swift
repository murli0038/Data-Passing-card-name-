//
//  CardDetailViewController.swift
//  Setting2
//
//  Created by Nikunj Prajapati on 20/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class CardDetailViewController: UIViewController
{
    
    @IBOutlet weak var CardDetailImage: UIImageView!
    @IBOutlet weak var CardNumberlbl: UILabel!
    @IBOutlet weak var CardDetailText: UILabel!
    
    var CardInfoImage = UIImage()
    var CardInfoNumber = ""
    var CardInfoDetail = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CardDetailImage.image = CardInfoImage
        CardNumberlbl.text = CardInfoNumber
        CardDetailText.text = CardInfoDetail
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
