//
//  ViewController.swift
//  NumberPrinter
//
//  Created by lijia xu on 7/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func textFieldValueChanged(_ sender: Any) {
        textView.text = nil
        guard let textField = sender as? UITextField,
              let intStr = textField.text else { return }
        textView.text = NumberPrinter.generateNumString(Int(intStr) ?? 0)
    }


}


//extension ViewController: UITextFieldDelegate
