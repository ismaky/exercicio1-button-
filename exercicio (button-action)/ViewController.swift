//
//  ViewController.swift
//  exercicio (button-action)
//
//  Created by Michelle on 24/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var text = "AÇÃO DISPARADA"

    var button: UIButton {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("APERTE", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 4
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tappedButton(_:)), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }
    
    @objc func tappedButton(_ sender: UIButton) {
        print(text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.button)
        self.configConstraints()
    }

    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.button.heightAnchor.constraint(equalToConstant: 20),
            self.button.widthAnchor.constraint(equalToConstant: -20)
        ])
    }

}

