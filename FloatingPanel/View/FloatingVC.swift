//
//  FloatingVC.swift
//  FloatingPanel
//
//  Created by Laksh Purbey on 30/09/2021.
//

import UIKit

class FloatingVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var btn_Dine: UIButton!
    @IBOutlet weak var btn_Park: UIButton!
    @IBOutlet weak var btn_School: UIButton!
    @IBOutlet weak var btn_Work: UIButton!
    
    @IBOutlet weak var tbl_lists: UITableView!
    @IBOutlet weak var seg_Index: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btn_Dine.layer.cornerRadius = 5
        btn_Park.layer.cornerRadius = 5
        btn_School.layer.cornerRadius = 5
        btn_Work.layer.cornerRadius = 5
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell

    }
    


}
