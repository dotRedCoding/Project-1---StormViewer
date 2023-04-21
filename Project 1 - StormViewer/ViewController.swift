//
//  ViewController.swift
//  Project 1 - StormViewer
//
//  Created by Jared Infantino on 2023-04-21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - PROPERTY
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

    
    
    
    
    

} // End of ViewController

