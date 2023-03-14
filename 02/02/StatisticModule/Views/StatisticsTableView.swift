//
//  StatisticsTableView.swift
//  02
//
//  Created by Марина on 02.03.2023.
//

import UIKit

class StatisticsTableView: UITableView {
    
    private let idStatisticsTableViewCell = "idStatisticsTableViewCell"
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        configure()
        setDelegates()
        register(StatisticsTableViewCell.self, forCellReuseIdentifier: idStatisticsTableViewCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .none
        separatorStyle = .none //не будет сепараторов
        bounces = false// оттяжка
        showsVerticalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setDelegates() {
        dataSource = self
        delegate = self
    }
}

extension StatisticsTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idStatisticsTableViewCell, for: indexPath) as? StatisticsTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

extension StatisticsTableView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        55
    }
}
