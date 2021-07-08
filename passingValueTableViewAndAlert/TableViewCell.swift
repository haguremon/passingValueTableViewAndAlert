//
//  TableViewCell.swift
//  passingValueTableViewAndAlert
//
//  Created by IwasakIYuta on 2021/07/08.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    //typealias Handler = (UIButton, UITextField) -> Void
    weak var delegate: UIViewController?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func seniButton(_ sender: Any) {
       seni()
    }
    func seni(){
        let vc = self.delegate?.storyboard?.instantiateViewController(identifier: "PassingValueView") as! PassingValueViewController
                  vc.passingValue = textField.text ?? ""
        delegate?.present(vc, animated: true, completion: nil)
    }
    //セルに色々結びつけるメソッド必須
//    func setup(butonTitle: String, valuText: String, tapHandler: @escaping Handler) {//tapHandlerは引数に@escaping属性を持つクロージャーで
//        button.setTitle(butonTitle, for: .normal)
//        textField.text = valuText
//        
//        //handler = tapHandler
//    }
   
}
