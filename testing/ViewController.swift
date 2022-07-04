//
//  ViewController.swift
//  testing
//
//  Created by Kaushik Ghosh on 04/07/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mailidTextField : UITextField!
    @IBOutlet weak var phoneTextField :UITextField!
    @IBOutlet weak var emailMessage :UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func email_check(_ sender : Any)
    {
        let email = mailidTextField.text ?? ""
        if email.isvalidmail()
        {
            emailMessage.textColor = UIColor.green
            emailMessage.text = "Yah! it's a Valid Email"
        }
        else{
            emailMessage.textColor = UIColor.red
            emailMessage.text = "Not a Valid Email"
        }
    }

}


extension String {
    func isvalidmail() -> Bool {
        let inputrefex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-zA-Za-z]"
        let predic = NSPredicate(format: "SELF MATCHES %@", inputrefex)
        return predic.evaluate(with: self)
    }
}

