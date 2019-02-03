//
//  ViewController.swift
//  TaskMovies
//
//  Created by mhr on 10/29/18.
//  Copyright © 2018 mhr. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   
    var name = ["Arabic Movies","English Movies","Turkish Movies","Indian Movies","China Movies","Italian Movies","Moroccan Movies","Labanese Movies","French Movies","German Movies"]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        let itemSize = UIScreen.main.bounds.height/3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20 ,0 ,10 ,0 )
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
      // UILableView.CollectionViewLayout = layout
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    // This action was to adjust the image size if were small.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

