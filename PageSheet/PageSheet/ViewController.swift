//
//  ViewController.swift
//  PageSheet
//
//  Created by Sachin Daingade on 23/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pagesheetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "HOME"
    }

    @IBAction func pageSheetAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let pageSheetVC = storyboard.instantiateViewController(withIdentifier: "PageSheetViewController") as UIViewController
        pageSheetVC.isModalInPresentation = true
        pageSheetVC.modalPresentationStyle = .pageSheet
        let nav = UINavigationController(rootViewController: pageSheetVC)
        self.navigationController?.present(nav, animated: true)
        
    }
    
}

