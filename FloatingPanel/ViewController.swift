//
//  ViewController.swift
//  FloatingPanel
//
//  Created by Laksh Purbey on 30/09/2021.
//

import UIKit
import MapKit
import FloatingPanel

class ViewController: UIViewController,FloatingPanelControllerDelegate {

    @IBOutlet weak var mapview: MKMapView!
    
    var fpc: FloatingPanelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fpc = FloatingPanelController()

              // Assign self as the delegate of the controller.
              fpc.delegate = self // Optional

        guard let ContentVC = (storyboard?.instantiateViewController(identifier: "FloatingVC")) as? FloatingVC else{
                      return
                  }
                  fpc.set(contentViewController: ContentVC)
                  fpc.addPanel(toParent: self)

    }

}

