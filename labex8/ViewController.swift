

import UIKit
import CoreData

class ViewController: UIViewController {

    // 1st step - access to app delegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 2nd step - access to context
        let context = appDelegate.persistentContainer.viewContext
        
        // 3rd step - creating some data and prepare to write into it
        // access to an instance of our table entity
        let newContact = NSEntityDescription.insertNewObject(forEntityName: "Contact", into: context)
        
        newContact.setValue("test first name", forKey: "firstName")
        newContact.setValue("test last name", forKey: "lastName")
        newContact.setValue("test email", forKey: "email")
        newContact.setValue(20, forKey: "age")
        
        // save it to our table
        appDelegate.saveContext()
        
    }


}

