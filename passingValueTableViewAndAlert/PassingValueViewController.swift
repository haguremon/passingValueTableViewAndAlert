//
//  PassingValueViewController.swift
//  passingValueTableViewAndAlert
//
//  Created by IwasakIYuta on 2021/07/04.
//

import UIKit

class PassingValueViewController: UIViewController {
var passingValue = ""
    
    @IBOutlet weak var passingValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingValueLabel.text = passingValue
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
