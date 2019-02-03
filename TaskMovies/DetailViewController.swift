//
//  DetailViewController.swift
//  TaskMovies
//
//  Created by mhr on 10/29/18.
//  Copyright © 2018 mhr. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "You Selected \(name) To watch"
        img.image = image
       // UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=BoRWnntcr2E" )! as URL, options: [:], completionHandler: nil)
        
        lbl.textColor = UIColor.blue
        
     //   let lblSize = CGSize(width: 30, height: 40)
    
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func onClickVote(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=BoRWnntcr2E" )! as URL, options: [:], completionHandler: nil)
    }
    

}
