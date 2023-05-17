//
//  SignUpViewController.swift
//  Messenger
//
//  Created by Максим Мосалёв on 17.05.2023.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you!", font: .avenir26())
    
    let emailLabel = UILabel(text: "Email")
    let emailTextField = OneLineTextField(font: .avenir20())
    
    let passwordLabel = UILabel(text: "Password")
    let passwordTextField = OneLineTextField(font: .avenir20())
    
    let confirmPasswordLabel = UILabel(text: "Confirm password")
    let confirmPasswordTextField = OneLineTextField(font: .avenir20())
    
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    
    
    let signUpButton = UIButton(title: "Sign Up", backgroundColor: .buttonDark(), titleColor: .white)
    let loginButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
        loginButton.titleLabel?.font = .avenir20()
        view.backgroundColor = .white
        setupConstraints()
    }
}

// MARK: = Setup constraints
extension SignUpViewController {
    private func setupConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let conformPasswordStackView = UIStackView(arrangedSubviews: [confirmPasswordLabel, confirmPasswordTextField], axis: .vertical, spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [
            emailStackView,
            passwordStackView,
            conformPasswordStackView,
            signUpButton],
                                    axis: .vertical, spacing: 40)
        
        let bottomStackView = UIStackView(arrangedSubviews: [
            alreadyOnboardLabel,
            loginButton
        ], axis: .horizontal, spacing: -1)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
                                     welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160),
                                     stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                                     stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
                                    ])
        
        NSLayoutConstraint.activate([bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
                                      bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                                      bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
        
    }
}

// MARK: = SwiftUI
import SwiftUI

struct SignUpViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
        
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = SignUpViewController()
        
        func makeUIViewController(context: Context) -> SignUpViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
