//
//  ViewController.swift
//  profileApp
//
//  Created by 윤규호 on 1/29/24.
//

import UIKit

class ViewController: UIViewController {

    let userID: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ykyo__"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textAlignment = .center
        return label
    }()
    
    let menuButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Menu"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let userPic: UIImageView = {
        let userPic = UIImageView()
        userPic.image = UIImage(named: "ProfilePicture")
        userPic.translatesAutoresizingMaskIntoConstraints = false
        userPic.contentMode = .scaleAspectFit
        return userPic
    }()
    
    let post: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "post"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let postCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "7"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let follower: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "follower"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let followerCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "350"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let following: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "following"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let followingCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "310"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let postStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        //stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let followerStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let followingStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let userInfoStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let userName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "윤규호"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textAlignment = .left
        return label
    }()
    
    let userInfo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "iOS Developer 🍎"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        return label
    }()
    
    let userInfo2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "https://github.com/ykyohub"
        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        return label
    }()
    
    let userInfo2Stack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let followButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        button.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1)
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    let messageButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Message", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.black, for: .normal)
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    
    let moreButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let chevronImage = UIImage(systemName: "chevron.down")?.withRenderingMode(.alwaysTemplate) {
            button.setImage(chevronImage, for: .normal)
            button.tintColor = .black
        }

        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    
    let followMessageStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addSubView()
        setupConstraints()
    }

    private func addSubView() {
        view.addSubview(userID)
        view.addSubview(menuButton)
        view.addSubview(userPic)
        [postCount, post].forEach {
            postStack.addArrangedSubview($0)
        }
        [followerCount, follower].forEach {
            followerStack.addArrangedSubview($0)
        }
        [followingCount, following].forEach {
            followingStack.addArrangedSubview($0)
        }
        [postStack, followerStack, followingStack].forEach {
            userInfoStack.addArrangedSubview($0)
        }
        view.addSubview(userInfoStack)
        userInfo2Stack.addArrangedSubview(userName)
        userInfo2Stack.addArrangedSubview(userInfo)
        userInfo2Stack.addArrangedSubview(userInfo2)
        view.addSubview(userInfo2Stack)
        followMessageStack.addArrangedSubview(followButton)
        followMessageStack.addArrangedSubview(messageButton)
        view.addSubview(followMessageStack)
        view.addSubview(moreButton)
        
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            userID.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            userID.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            menuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            userPic.topAnchor.constraint(equalTo: userID.bottomAnchor, constant: 14),
            userPic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            userInfoStack.topAnchor.constraint(equalTo: userPic.topAnchor, constant: 14),
            userInfoStack.centerYAnchor.constraint(equalTo: userPic.centerYAnchor),
            userInfoStack.leadingAnchor.constraint(equalTo: userPic.trailingAnchor, constant: 30),
            userInfoStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            
            userInfo2Stack.topAnchor.constraint(equalTo: userPic.bottomAnchor, constant: 20),
            userInfo2Stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            followMessageStack.topAnchor.constraint(equalTo: userInfo2Stack.bottomAnchor, constant: 20),
            followMessageStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            followMessageStack.trailingAnchor.constraint(equalTo: moreButton.leadingAnchor, constant: -8),
            
            moreButton.topAnchor.constraint(equalTo: userInfo2Stack.bottomAnchor, constant: 20),
            moreButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            moreButton.widthAnchor.constraint(equalToConstant: 30),
            moreButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
