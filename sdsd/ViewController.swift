//
//  ViewController.swift
//  sdsd
//
//  Created by AMIT IOS Developer on 3/21/18.
//  Copyright © 2018 com.AmitSoftware. All rights reserved.
//

    import UIKit

    class ViewController: UIViewController , UITextFieldDelegate  {
        @IBOutlet weak var tt: UITextField!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            tt.delegate = self
           
            
         }
        
        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
             

        }
        
        func textField(_ textField: UITextField,
                       shouldChangeCharactersIn range: NSRange,
                       replacementString string: String) -> Bool
        {
            if var text = textField.text
            {
                
               if let  ff =  text.range(of: ".")
               {
                  text.characters.remove(at:ff.lowerBound)
                
                  if let dd = text.range(of: ".")
                  {
                      text.characters.remove(at:dd.lowerBound)
                    
                      if string == "."
                      {
                          return false
                      }
                  }
                
               }
                
            }
             return true
        }
      
 

        @IBAction func btnClicked(_ sender: Any) {
            
            let rr = self.storyboard?.instantiateViewController(withIdentifier: "cc")
            
            self.present(rr!, animated: true, completion: nil)
        }
      
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

