//
//  PersonsView.swift
//  TotalBill
//
//  Created by Zenya Kirilov on 30.09.22.
//

import Foundation
import UIKit

class PersonsView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backgroundGrayView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(backgroundGrayView)
        backgroundGrayView.addSubview(minusButton)
        backgroundGrayView.addSubview(plusButton)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            backgroundGrayView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            backgroundGrayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundGrayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundGrayView.heightAnchor.constraint(equalToConstant: 100),
            
            minusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: backgroundGrayView.leadingAnchor, constant: 0),
            minusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 80),
            
            plusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            plusButton.trailingAnchor.constraint(equalTo: backgroundGrayView.trailingAnchor, constant: 0),
            plusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 80)
            
        ])
    }
}
