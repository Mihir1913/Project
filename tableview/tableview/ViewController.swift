//
//  ViewController.swift
//  tableview
//
//  Created by Mihir Almaula on 21/12/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tabledata: UITableView!
    var arrayimage  = ["apple","apple"]
    var arratname =  ["Mihir","Mihir"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayimage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell") as? CellTableViewCell else {
           return UITableViewCell()
       }
                cell.namelabel.text = arratname[indexPath.row]
                cell.image1.image = UIImage(named: "apple")
                cell.image2.image = UIImage(named: "apple")
              //  acell.image2.image = arrayimage[indexPath.row]
                return cell
    }
    
}

