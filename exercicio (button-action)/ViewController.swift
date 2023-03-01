//
//  ViewController.swift
//  exercicio (button-action)
//
//  Created by Michelle on 24/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var text = "AÇÃO DISPARADA"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = .green
        
        let colorChangeButtonBlack: UIButton = UIButton()
        colorChangeButtonBlack.translatesAutoresizingMaskIntoConstraints = false
        colorChangeButtonBlack.setTitle("APERTE", for: .normal)
        colorChangeButtonBlack.setTitleColor(.blue, for: .normal)
        colorChangeButtonBlack.layer.borderColor = UIColor.blue.cgColor
        colorChangeButtonBlack.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        colorChangeButtonBlack.backgroundColor = .clear
        colorChangeButtonBlack.layer.cornerRadius = 10
        colorChangeButtonBlack.layer.borderWidth = 4
        colorChangeButtonBlack.frame = CGRect (x: 45, y: 280, width: 300, height: 40)
        colorChangeButtonBlack.addTarget(self, action: #selector(self.tappedButton(_:)), for: .touchUpInside)
        colorChangeButtonBlack.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        
        view.addSubview(colorChangeButtonBlack)
        
        let colorChangeButtonWhite: UIButton = UIButton()
        colorChangeButtonWhite.translatesAutoresizingMaskIntoConstraints = false
        colorChangeButtonWhite.setTitle("APERTE E MUDE A COR", for: .normal)
        colorChangeButtonWhite.setTitleColor(.blue, for: .normal)
        colorChangeButtonWhite.layer.borderColor = UIColor.blue.cgColor
        colorChangeButtonWhite.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        colorChangeButtonWhite.backgroundColor = .clear
        colorChangeButtonWhite.layer.cornerRadius = 10
        colorChangeButtonWhite.layer.borderWidth = 4
        colorChangeButtonWhite.frame = CGRect (x: 45, y: 480, width: 300, height: 40)
        colorChangeButtonBlack.addTarget(self, action: #selector(self.tappedButton(_:)), for: .touchUpInside)
        colorChangeButtonWhite.addTarget(self, action: #selector(self.buttonTapped1), for: .touchUpInside)
        
        view.addSubview(colorChangeButtonWhite)
        
    }
    @objc func buttonTapped() {
        view.backgroundColor = .black
    }

    @objc func buttonTapped1() {
        view.backgroundColor = .white
    }
    
    @objc func tappedButton(_ sender: UIButton) {
        print(text)
    }
    
}

