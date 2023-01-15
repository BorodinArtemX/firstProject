//
// GitPractice
// SecondViewController.swift

// Created by Bohdan Bondar on 12.01.2023 at 11:58 AM.
// Copyright (c) 2023 Bohdan Bondar. All rights reserved.
 
// GitHub: https://github.com/bondarbv
// Linkedin: https://www.linkedin.com/in/bondarbv-ios/


import UIKit

class FirstViewController: UIViewController, UIScrollViewDelegate {
    
    private let personImageView: UIImageView = {
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 100
        return imageView
    }()

    private let mainLabel = UILabel()
    let myLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 40)
        label.text = "What is Lorem?"
        return label
    }()
    
   private let scrollView = UIScrollView()
    let someLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25)
        label.text = "Suspendisse sit amet sem accumsan, viverra tellus a, volutpat est. Praesent egestas volutpat odio, in tincidunt ex ultricies et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris finibus augue enim, eget mollis elit pharetra sagittis. Nam eget nunc orci. Quisque maximus, tellus congue malesuada congue, odio tortor elementum dui, vel rhoncus purus massa ut tortor. Sed auctor mi id erat finibus, ac volutpat ligula congue. Vivamus a dictum erat. Nunc eu dapibus ante. Ut nulla massa, euismod vitae neque in, porta pharetra leo. Phasellus tincidunt, nisl maximus viverra suscipit, tellus diam malesuada diam, ut varius purus lacus sed diam. Curabitur ut nunc ultricies, vulputate velit nec, egestas risus. Praesent commodo dolor sed dictum dapibus. In ut sagittis ante. Sed sagittis faucibus risus, nec tincidunt justo elementum a. Aliquam non elit mollis, interdum neque eu, lobortis dui. Etiam mauris ex, fermentum in enim nec, sagittis iaculis orci. Morbi dui nisi, malesuada ullamcorper massa eget, dignissim dictum turpis. Vestibulum mauris felis, placerat quis ante vel, cursus fermentum est. Quisque et ligula justo. Aliquam nec blandit nunc. Vestibulum ac sagittis turpis. Aenean vehicula euismod egestas. Integer in mollis lorem, sit amet hendrerit diam. Morbi ut orci lectus. Donec vehicula mi eget imperdiet euismod. Vivamus auctor diam a laoreet facilisis. Quisque fringilla, mauris vel egestas interdum, quam nunc sagittis lectus, id dapibus massa mi vel elit. Donec in enim molestie, congue nibh sed, porta massa. Morbi odio ligula, commodo eu quam in, aliquam semper dui. Morbi pharetra ante a rhoncus rutrum. Proin sit amet elementum nisl, id rutrum neque. Aliquam sit amet sapien urna. Sed sit amet tortor cursus, dapibus metus nec, porta libero. Vestibulum malesuada, risus eu porttitor bibendum, velit est hendrerit urna, at pellentesque est mauris vel dui. Etiam lobortis, lectus eu egestas euismod, nunc est tempor est, sed congue magna turpis vel urna. Nullam placerat auctor justo vitae posuere. Vestibulum velit felis, fringilla quis sapien in, suscipit hendrerit nulla. Cras vulputate hendrerit arcu vel bibendum. Suspendisse potenti."
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        scrollView.delegate = self
    }

    func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(mainLabel)
        scrollView.addSubview(personImageView)
        scrollView.addSubview(someLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        someLabel.translatesAutoresizingMaskIntoConstraints = false
        personImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            mainLabel.topAnchor.constraint(equalTo: personImageView.bottomAnchor, constant: 20),
            mainLabel.bottomAnchor.constraint(equalTo: someLabel.topAnchor),
            mainLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                    
            personImageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            personImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            personImageView.widthAnchor.constraint(equalToConstant: 200),
            personImageView.heightAnchor.constraint(equalToConstant: 200),
        
            someLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 25),
            someLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            someLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
    
}

extension SecondViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 1000, scrollView.contentOffset.y > 1100 {
            print("Scroll to top")
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
}
