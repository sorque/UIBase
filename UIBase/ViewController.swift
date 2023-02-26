//
//  ViewController.swift
//  UIBase
//
//  Created by m.korovin on 26.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        setupConstrains()
        animateView()
    }
    
    private let uiView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.isHidden = true
        view.alpha = 0.7
        view.layer.cornerRadius = 20
        return view
    } ()
    
    func setupConstrains() {
        view.addSubview(uiView)
        
        NSLayoutConstraint.activate([
            uiView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            uiView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            uiView.heightAnchor.constraint(equalToConstant: 120),
            uiView.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    func addSomeGesture() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipeRight.direction = .right
        uiView.addGestureRecognizer(swipeRight)
    }
    
    @objc
    func swipeRight() {
        print("Swipe right")
    }
    
    func animateView() {
        UIView.animate(withDuration: 2.5) {
            self.uiView.alpha = 0.1
            self.view.setNeedsLayout()
            }
        }
    
    let myView = UIView()
    
    

}

