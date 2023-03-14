//
//  StatisticViewController.swift
//  02
//
//  Created by Марина on 01.03.2023.
//

import UIKit

class StatisticViewController: UIViewController {
    
    private let Statisticslabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.font = UIFont.robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Week", "Month"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.backgroundColor = .specialGreen
        segmentedControl.selectedSegmentTintColor = .specialYellow //заливка выделенного
        let font = UIFont(name: "Roboto-Medium", size: 16)
        segmentedControl.setTitleTextAttributes([.font : font as Any, .foregroundColor : UIColor.white], for: .normal)
        segmentedControl.setTitleTextAttributes([.font : font as Any,
                                                 .foregroundColor: UIColor.specialGray], for: .selected)
        segmentedControl.addTarget(self, action: #selector(segmentedChanged), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private let ExercisesLabel = UILabel(text: "Exercises")
    
    private let tableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(Statisticslabel)
        view.addSubview(ExercisesLabel)
        view.addSubview(tableView)
        view.addSubview(segmentedControl
        )
    }
    
    @objc private func segmentedChanged() {
        if segmentedControl.selectedSegmentIndex == 0 {
            print("Week")
        } else {
            print("Month")
        }
    }
}
extension StatisticViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            Statisticslabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 10),
            Statisticslabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),

            segmentedControl.topAnchor.constraint(equalTo: Statisticslabel.bottomAnchor, constant: 20),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            ExercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ExercisesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ExercisesLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 10),
            
            tableView.topAnchor.constraint(equalTo: ExercisesLabel.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
