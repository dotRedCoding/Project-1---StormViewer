//
//  ViewController.swift
//  Project 1 - StormViewer
//
//  Created by Jared Infantino on 2023-04-21.
//

import UIKit

class ViewController: UITableViewController {
    // MARK: - Properties
    var pictures = [String]()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default // built in system type for the File System
        let path = Bundle.main.resourcePath! // Bundle is a directory of our compiled program and all our assets
        let items = try! fm.contentsOfDirectory(atPath: path) // set the contents of the new constant to the pointed path (the one above where the assests are)
        
        for item in items { // loop through all the items found in the directory
            if item.hasPrefix("nssl") {
                // this is the picture to load
                pictures.append(item)
            }
        }
        print(pictures)
    } // End of viewDidLoad

    // MARK: - TableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // needs to be type cast as DetailViewController so we dont get a regular viewController
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row] // sets the property to selection at the current row
            navigationController?.pushViewController(vc, animated: true) // shows the screen
        }
    }
    
    

} // End of ViewController

