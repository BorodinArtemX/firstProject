//
//  SecondViewController.swift
//  MyGitPractice
//
//  Created by Артем Бородин on 14/01/2023.
//

import UIKit

class SecondViewController: UIViewController {

        let textView = UITextView()
    

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            setupViews()
            textView.backgroundColor = .lightGray
            textView.font = .systemFont(ofSize: 25)
        }

        func setupViews() {
            view.addSubview(textView)
            
            textView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                textView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                textView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        }

    }
