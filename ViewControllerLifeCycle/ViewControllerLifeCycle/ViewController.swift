//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Suraj Gupta on 02/05/24.
//

import UIKit

class HomeViewController: UIViewController {

    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("DetailView", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // this is called when first time view is loaded in navigation stack
    override func loadView() {
        super.loadView()
        
        print("HomeViewController loadView")
    }

    
    // this is also called when first time view is loaded in navigation stack
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        
        print("HomeViewController viewDidLoad")
        setupUI()
    }
    
    
    // it is called when view is first time loaded as well as when we return back to our own view in navigation stack
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("HomeViewController viewWillAppear")
    }
    
    
    // it is also called when view is first time loaded as well as when we return back to our own view in navigation stack
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("HomeViewController viewDidAppear")
    }
    
    
    // it is called when we are transitioning into a new view and current view is getting disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("HomeViewController viewWillDisappear")
    }
    
    
    // it is called when current view is totally disappeared.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("HomeViewController viewDidDisappear")
    }
    
    // this function is to set-up constraints of button in our view
    private func setupUI() {
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    // this function handles event in our button on tapping.
    @objc func buttonTapped() {
        let detailVC = DetailsViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }

}

