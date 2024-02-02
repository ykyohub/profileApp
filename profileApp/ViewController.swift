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
    
    let gridButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Grid"), for: .normal)
        return button
    }()
    
    let gridButtonStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 8

        return stackView
    }()
    
    let changeToProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        if let buttonImage = UIImage(named: "Profile")?.withRenderingMode(.alwaysTemplate) {
            button.setImage(buttonImage, for: .normal)
            button.tintColor = .black
        }
        button.addTarget(target, action: #selector(showProfileVC), for: .touchUpInside)
        return button
    }()
    
    private let gridFlowLayout: GridCollectionViewFlowLayout = {
        let layout = GridCollectionViewFlowLayout()
        layout.cellSpacing = 8
        layout.numberOfColumns = 3
        return layout
    }()
    
    private var dataSource = getSampleImages()
    
    private lazy var collectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: self.gridFlowLayout)
        view.isScrollEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = true
        view.contentInset = .zero
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.clipsToBounds = true
        view.register(MyCell.self, forCellWithReuseIdentifier: "MyCell")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addSubView()
        setupConstraints()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
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
        view.addSubview(self.collectionView)
        gridButtonStack.addArrangedSubview(gridButton)
        view.addSubview(gridButtonStack)
        view.addSubview(changeToProfileButton)
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
            moreButton.heightAnchor.constraint(equalToConstant: 30),
            
            gridButtonStack.heightAnchor.constraint(equalToConstant: 40),
            gridButtonStack.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/3),
            gridButtonStack.topAnchor.constraint(equalTo: followMessageStack.bottomAnchor, constant: 10),
            gridButtonStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            gridButtonStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            self.collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            self.collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            self.collectionView.topAnchor.constraint(equalTo: gridButtonStack.bottomAnchor),
            self.collectionView.bottomAnchor.constraint(equalTo: changeToProfileButton.topAnchor),
            
            changeToProfileButton.heightAnchor.constraint(equalToConstant: 50),
            changeToProfileButton.topAnchor.constraint(equalTo: self.collectionView.bottomAnchor),
            changeToProfileButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            changeToProfileButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
        ])
    }
    
    @objc func showProfileVC() {
        let user = User(name: "윤규호", age: 27)
        let viewModel = UserViewModel(user: user)
        let vc = ProfileViewController(viewModel: viewModel)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
private func getSampleImages() -> [UIImage?]{
    [
        UIImage(named: "picture 0"),
        UIImage(named: "picture 1"),
        UIImage(named: "picture 2"),
        UIImage(named: "picture 3"),
        UIImage(named: "picture 4"),
        UIImage(named: "picture 5"),
        UIImage(named: "picture 6")
    ]
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCell.id, for: indexPath) as! MyCell
        cell.prepare(image: self.dataSource[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let flowLayout = collectionViewLayout as? GridCollectionViewFlowLayout, flowLayout.numberOfColumns > 0
        else { fatalError() }
        
        let widthOfCells = collectionView.bounds.width
        
        let widthOfSpacing = CGFloat(flowLayout.numberOfColumns - 1) * flowLayout.cellSpacing
        
        let width = Int((widthOfCells - widthOfSpacing) / CGFloat(flowLayout.numberOfColumns))
        
        return CGSize(width: width, height: width * Int(flowLayout.ratioHeightToWidth))
    }
}
