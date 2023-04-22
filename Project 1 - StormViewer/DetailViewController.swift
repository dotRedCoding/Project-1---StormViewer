//
//  DetailViewController.swift
//  Project 1 - StormViewer
//
//  Created by Jared Infantino on 2023-04-22.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never // we dont want large titles on this screen through inheritance
        
        if let imageToLoad = selectedImage { // checks to see if the there is an image
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    // MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true 
    }
    
    // MARK: - viewWillDissapear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

} // End of DetailViewController
