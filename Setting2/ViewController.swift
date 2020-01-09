//
//  ViewController.swift
//  Setting2
//
//  Created by Nikunj Prajapati on 20/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var arr = [["Image":#imageLiteral(resourceName: "Background"),"Name":"Background","Detail":"This Image has background of Scene in Game"],
               ["Image":#imageLiteral(resourceName: "logo"),"Name":"Logo","Detail":"This Image has logo in Game"],
               ["Image":#imageLiteral(resourceName: "dealbutton"),"Name":"Deal Button","Detail":"This Button has deal button in Game"],
               ["Image":#imageLiteral(resourceName: "back"),"Name":"BackView of Card","Detail":"This Image has BackView of Card in Game"],
               ["Image":#imageLiteral(resourceName: "card14"),"Name":"Card 1","Detail":"This Card has number one in Game"],
               ["Image":#imageLiteral(resourceName: "card2"),"Name":"Card 2","Detail":"This Card has number Two in Game"],
               ["Image":#imageLiteral(resourceName: "card3"),"Name":"Card 3","Detail":"This Card has number Three in Game"],
               ["Image":#imageLiteral(resourceName: "card4"),"Name":"Card 4","Detail":"This Card has number Four in Game"],
               ["Image":#imageLiteral(resourceName: "card5"),"Name":"Card 5","Detail":"This Card has number Five in Game"],
               ["Image":#imageLiteral(resourceName: "card6"),"Name":"Card 6","Detail":"This Card has number Six in Game"],
               ["Image":#imageLiteral(resourceName: "card7"),"Name":"Card 7","Detail":"This Card has number Seven in Game"],
               ["Image":#imageLiteral(resourceName: "card8"),"Name":"Card 8","Detail":"This Card has number Eight in Game"],
               ["Image":#imageLiteral(resourceName: "card9"),"Name":"Card 9","Detail":"This Card has number Nine in Game"],
               ["Image":#imageLiteral(resourceName: "card10"),"Name":"Card 10","Detail":"This Card has number Ten in Game"],
               ["Image":#imageLiteral(resourceName: "card11"),"Name":"Card 11","Detail":"This Card has number Eleven in Game"],
               ["Image":#imageLiteral(resourceName: "card12"),"Name":"Card 12","Detail":"This Card has number Twelve in Game"],
               ["Image":#imageLiteral(resourceName: "card13"),"Name":"Card 13","Detail":"This Card has number Thirteen in Game"]]

    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CardNameTableViewCell
        cell.CardImageView.image = arr[indexPath.row]["Image"] as? UIImage
        cell.CardName.text = arr[indexPath.row]["Name"] as? String
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let Detail = self.storyboard?.instantiateViewController(identifier: "CardInfo") as! CardDetailViewController
        self.navigationController?.pushViewController(Detail, animated: true)
        Detail.CardInfoImage = arr[indexPath.row]["Image"] as! UIImage
        Detail.CardInfoNumber = arr[indexPath.row]["Name"] as! String
        Detail.CardInfoDetail = arr[indexPath.row]["Detail"] as! String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

