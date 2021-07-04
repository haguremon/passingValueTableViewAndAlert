//
//  ViewController.swift
//  passingValueTableViewAndAlert
//
//  Created by IwasakIYuta on 2021/07/04.
//ライブラリ「Eurekaを使って今度やってみるやりたいことできないおおお
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBAction func passingValueButton(_ sender: UIButton) {
        let passingValueTextField = self.view.viewWithTag(1) as! UITextField
        let vc = self.storyboard?.instantiateViewController(identifier: "PassingValueView") as! PassingValueViewController
        vc.passingValueLabel.text = passingValueTextField.text ?? ""
    present(vc, animated: true, completion: nil)
    }
    
}
extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
//        let textField = cell.viewWithTag(1) as! UITextField
        let button = cell.viewWithTag(2) as! UIButton
        //textField.text = ""
        passingValueButton(button)
        
        return cell
    }
    
    
}
 
