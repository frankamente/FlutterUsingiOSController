//
//  NewsViewController.swift
//  Runner
//
//  Created by Francisco Márquez Chaves on 25/04/2020.
//

import UIKit

class NewsViewController: UIViewController {
    var coordinatorDelegate: NewsCoordinatorDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFlutter(_ sender: Any) {
        coordinatorDelegate?.navigateToFlutter()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
