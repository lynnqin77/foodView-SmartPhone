//
//  ViewController.swift
//  CustomTableViewWithXib
//
//  Created by Lynn Qin on 9/30/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let imageNames = ["food1","food2","food3","food4","food5"]
    
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        
        cell.imageView?.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        return cell
        
    }
    
}
