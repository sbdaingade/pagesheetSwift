//
//  PageSheetViewController.swift
//  PageSheet
//
//  Created by Sachin Daingade on 23/09/23.
//

import UIKit

class PageSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "PageSheet ViewController"
        let rightBarButton : UIBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(rightBarButtonAction))
        let leftBarButton : UIBarButtonItem = UIBarButtonItem(title: "Cancel", style:.done, target: self, action: #selector(leftBarButtonAction))
        self.navigationItem.leftBarButtonItem = leftBarButton
        self.navigationItem.rightBarButtonItem = rightBarButton
        
    }

    @objc
    private func leftBarButtonAction() {
        self.dismiss(animated: true)
    }
    @objc
    private func rightBarButtonAction() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
