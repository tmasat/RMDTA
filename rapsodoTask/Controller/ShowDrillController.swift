//
//  ShowDrillController.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 6.01.2020.
//

import UIKit
import CoreData

class ShowDrillController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let buttonBorder = ButtonBorder()
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var backButton: UIButton!
    
    var totalTaskImage = [UIImage]()
    var totalTaskDuration = [Int]()
    var totalTaskName = [String]()
    var totalTaskDate = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBorder.addBorder(selectedButton: backButton)
        getStartedToFetchData()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return totalTaskName.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              
           let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
           cell.savedTaskName.text = totalTaskName[indexPath.row]
           cell.savedTaskDuration.text = "Duration = " + String(totalTaskDuration[indexPath.row])  + " minutes"
           cell.savedTaskImage.image = totalTaskImage[indexPath.row]
           cell.savedTaskDate.text = "Date = " + totalTaskDate[indexPath.row]
           
           return cell
        }

             
       
       
       func convertBase64ToImage(imageString: String) -> UIImage {
              let imageData = Data(base64Encoded: imageString, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)!
              return UIImage(data: imageData)!
          }
       
       
       
       func getStartedToFetchData(){
           guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
            let managedContext = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
            do {
                let result = try managedContext.fetch(fetchRequest)
                for data in result as! [NSManagedObject] {
                   
                   totalTaskName.append(data.value(forKey: "taskName") as! String)
                   totalTaskDuration.append(data.value(forKey: "taskDuration") as! Int)
                   totalTaskImage.append(convertBase64ToImage(imageString: data.value(forKey: "taskImage") as! String))
                    totalTaskDate.append(data.value(forKey: "taskDate") as! String)
                
                }
            } catch {
                print("Failed")
            }
           }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
