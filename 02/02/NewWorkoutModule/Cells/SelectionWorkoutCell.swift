//
//  SelectionWorkoutCell.swift
//  02
//
//  Created by Марина on 14.03.2023.
//

import UIKit

class SelectionWorkoutCell: UICollectionViewCell {
    
    static let idSelectionWorkoutCell = "idSelectionWorkoutCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "testWorkout")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .specialDarkGreen
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .specialBrown
        self.addSubview(imageView)
        setConstarints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(nameImage: String) {
        imageView.image = UIImage(named: nameImage)?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .black
    }
}



extension SelectionWorkoutCell {
    private func setConstarints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
