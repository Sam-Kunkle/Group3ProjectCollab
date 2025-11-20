//
//  ConvertViewController.swift
//  Group3FinalProject
//
//  Created by Chris Cutshaw on 11/20/25.
//

import UIKit

class ConvertViewController: UIViewController {

        
    var resultText: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var thanksImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = resultText
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateThanks()
    }

    private func animateThanks() {
        UIView.animate(withDuration: 2.0, animations: {
            self.thanksImageView.alpha = 1.0
            self.thanksImageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        })
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
