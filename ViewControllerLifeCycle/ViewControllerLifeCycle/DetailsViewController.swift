//
//  DetailsViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Suraj Gupta on 02/05/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    override func loadView() {
        super.loadView()
        
        print("DetailView loadView")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        print("DetailView viewDidLoad")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("DetailView viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("DetailView viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("DetailView viewWillDisappear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("DetailView viewDidDisappear")
    }

}
