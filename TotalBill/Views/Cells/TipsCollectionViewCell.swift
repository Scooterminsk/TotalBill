//
//  TipsCollectionViewCell.swift
//  TotalBill
//
//  Created by Zenya Kirilov on 1.10.22.
//

import Foundation
import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    let percentLabel: UILabel = {
        let label = UILabel()
        label.text = "10%"
        label.textColor = .black
//        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 0.4549019608, green: 0.08235294118, blue: 0.7058823529, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        percentLabel.font = UIFont(name: "Avenir Next Bold", size: frame.height / 3.4)
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        layer.cornerRadius = 10
        
        addSubview(percentLabel)
    }
}

extension TipsCollectionViewCell {
    
    private func setConstaints() {
        NSLayoutConstraint.activate([
            percentLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            percentLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
