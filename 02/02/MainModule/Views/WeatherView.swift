//
//  WeatherView.swift
//  02
//
//  Created by Марина on 23.02.2023.
//

import UIKit

class WeatherView : UIView {
    
    private let weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sun")
//        imageView.backgroundColor = .red
        return imageView
    }()
    
    private let weatherStatusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Солнечно"
//        label.backgroundColor = .gray
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        return label
    }()
    
    private let weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.numberOfLines = 2
//        label.backgroundColor = .green
        label.textColor = .specialGray
        label.font = .robotoMedium14()
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        self.layer.cornerRadius = 10
        self.addShadowOnView()
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(weatherIconImageView)
        self.addSubview(weatherStatusLabel)
        self.addSubview(weatherDescriptionLabel)
    }
}

extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weatherIconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            weatherIconImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            weatherIconImageView.heightAnchor.constraint(equalToConstant: 62),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 62),
//            weatherIconImageView.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
//            weatherIconImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
            
            
            
            weatherStatusLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            weatherStatusLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            weatherStatusLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
            weatherStatusLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherStatusLabel.bottomAnchor, constant: 0),
            weatherDescriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
    }
}
