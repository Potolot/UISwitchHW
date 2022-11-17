//
//  ViewControllerSecond.swift
//  UISwitchHW
//
//  Created by Вадим Воляс on 10.11.2022.
//

import UIKit

class ViewControllerSecond: UIViewController {
    
    @IBOutlet weak var textFieldFIO: UITextField!
    @IBOutlet weak var numberOfGuests: UITextField!
    @IBOutlet weak var numberOfTable: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func checkActionButton(_ sender: UIButton) {
        
        let texFieldFIO = textFieldFIO.text!
        let numberOfGuests = numberOfGuests.text!
        let numberOfTable = numberOfTable.text!
        
        if texFieldFIO.isEmpty ||
            numberOfGuests.isEmpty ||
            numberOfTable.isEmpty {
            let alertController = UIAlertController(title: "Error!", message: "Please, fill all lines and try again", preferredStyle: .alert)
            let action = UIAlertAction(title: "Cancel", style: .cancel)
            
            alertController.addAction(action)
            present(alertController, animated: true)
        } else {
            let alertController = UIAlertController(title: "Calculate?", message: "Issue a receipt?", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default) {
                action in
                self.performSegue(withIdentifier: "ToThirdStoryboard", sender: nil)
            }
            let action2 = UIAlertAction(title: "Cancel", style: .cancel)
            
            alertController.addAction(action)
            alertController.addAction(action2)
            present(alertController, animated: true)
        }
    }
    
    
}
    
    
