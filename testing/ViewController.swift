//
//  ViewController.swift
//  testing
//
//  Created by Kaushik Ghosh on 04/07/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mailidTextField : UITextField!
  
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailMessage :UILabel!

    @IBOutlet weak var phoneMessage: UILabel!
    
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
    
    
    
    @IBAction func ButtonAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = namestoryboard.instantiateViewController(withIdentifier: "SecondPageControllerViewController") as! SecondPageControllerViewController
        self.navigationController!.pushViewController(vc, animated:true)
    }
    
    
    @IBAction func phonenumberchecking(_ sender: Any) {
        let email = phoneTextField.text ?? ""
        if email.isvalidphone()
        {
            phoneMessage.textColor = UIColor.green
            phoneMessage.text = "Yah! it's a Valid Phone"
        }
        else{
            phoneMessage.textColor = UIColor.red
            phoneMessage.text = "Not a Valid Phone Number"
        }    }
    
}


extension String {
    func isvalidmail() -> Bool {
        let inputrefex = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
        let predic = NSPredicate(format: "SELF MATCHES %@", inputrefex)
        return predic.evaluate(with: self)
    }
    
    func isvalidphone() -> Bool {
        let inputrefex = "^[+]?[(]?[0-9]{3}[)]?[-\\.]?[0-9]{3}[-\\.]?[0-9]{4,6}$"
        let predic = NSPredicate(format: "SELF MATCHES %@", inputrefex)
        return predic.evaluate(with: self)
    }}

