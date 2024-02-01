//
//  MainViewController.swift
//  profileApp
//
//  Created by 윤규호 on 1/31/24.
//

import UIKit

class MainViewController: UIViewController {
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Sparta")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let todoCheck: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("할 일 확인하기", for: .normal)
        return button
    }()
    
    let completedCheck: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("완료한일 보기", for: .normal)
        return button
    }()
    
    let catImage: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("🐈", for: .normal)
        return button
    }()
    
    let showProfileDesignVC: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ProfileDesignViewController", for: .normal)
        button.addTarget(target, action: #selector(profileDesignVCButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubView()
        setupConstraints()
    }
    
    private func addSubView() {
        view.addSubview(mainImage)
        view.addSubview(todoCheck)
        view.addSubview(completedCheck)
        view.addSubview(catImage)
        view.addSubview(showProfileDesignVC)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            mainImage.widthAnchor.constraint(equalToConstant: 200),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            mainImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            todoCheck.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 20),
            todoCheck.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            completedCheck.topAnchor.constraint(equalTo: todoCheck.bottomAnchor, constant: 20),
            completedCheck.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            catImage.topAnchor.constraint(equalTo: completedCheck.bottomAnchor, constant: 20),
            catImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            showProfileDesignVC.topAnchor.constraint(equalTo: catImage.bottomAnchor, constant: 20),
            showProfileDesignVC.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
        ])
    }
    
    @objc func profileDesignVCButtonTapped() {
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
