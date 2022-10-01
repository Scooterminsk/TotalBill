//
//  TipsView.swift
//  TotalBill
//
//  Created by Zenya Kirilov on 1.10.22.
//

import Foundation
import UIKit

class TipsView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Tips"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let tipsCollectionView: UICollectionView = {
       let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.minimumInteritemSpacing = 4.5
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let tipsArray = ["0%", "10%", "15%", "20%"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        setupView()
        setDelegates()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(titleLabel)
        addSubview(tipsCollectionView)
        tipsCollectionView.register(TipsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    private func setDelegates() {
        tipsCollectionView.dataSource = self
        tipsCollectionView.delegate = self
    }
    
}

extension TipsView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = tipsCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TipsCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.percentLabel.text = tipsArray[indexPath.row]
        
        return cell
    }
}

extension TipsView: UICollectionViewDelegate {
    
}

extension TipsView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: tipsCollectionView.frame.width / 5,
               height: tipsCollectionView.frame.width / 5)
    }
}

extension TipsView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            tipsCollectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            tipsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            tipsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            tipsCollectionView.heightAnchor.constraint(equalToConstant: 100),
            
            
        ])
    }
}
