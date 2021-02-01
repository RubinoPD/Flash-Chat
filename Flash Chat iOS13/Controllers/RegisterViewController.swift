import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
         
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    // Would be best to show a pop up for the user with the error
                    print(e)
                } else {
                    // Navigate to the ChatViewController
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
            
        }
        
    }
    
}
