//
//  ProfileViewController.swift
//  profileApp
//
//  Created by 윤규호 on 1/31/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitleColor(.green, for: .normal)
        button.setTitle("random age", for: .normal)
        button.addTarget(self, action: #selector(changeAge), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var viewModel: UserViewModel

    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.delegate = self
        self.view.backgroundColor = .white
        self.setupUILayout()
        self.nameLabel.text = viewModel.userName
        self.ageLabel.text = String(viewModel.userAge)
    }
    
    private func setupUILayout() {
        self.view.addSubview(nameLabel)
        self.view.addSubview(ageLabel)
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            nameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            ageLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            button.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func changeAge() {
        viewModel.userAge = Int.random(in: 0..<100)
    }
}

extension ProfileViewController: UserViewModelDelegate {
    func updateUserName(name: String) {
        DispatchQueue.main.async {
            self.nameLabel.text = name
        }
    }
    
    func updateUserAge(age: Int) {
        DispatchQueue.main.async {
            self.ageLabel.text = String(age)
        }
    }
}
