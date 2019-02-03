//
//  CalssViewController.swift
//  TaskMovies
//
//  Created by mhr on 11/1/18.
//  Copyright © 2018 mhr. All rights reserved.
//

import UIKit

class CalssViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var name = ["Arabic Movies","English Movies","Turkish Movies","Indian Movies","China Movies","Italian Movies","Moroccan Movies","Labanese Movies","French Movies","German Movies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.lbl2.text = name[indexPath.row]
        cell?.imgimage.image = UIImage(named: name[indexPath.row])
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        let StoryBoard:UIStoryboard = UIStoryboard(name:"main",bundle:nil)
        
        let nextViewConTroller = StoryBoard.instantiateViewController(withIdentifier: "CalssViewController") as! CalssViewController
    self.navigationController?.pushViewController(vc, animated: true)
    }


}
