//
//  SelectWorkoutCollectionView.swift
//  02
//
//  Created by Марина on 14.03.2023.
//

import UIKit

class SelectWorkoutCollectionView: UICollectionView {
    
    private let collectionLayout = UICollectionViewFlowLayout()
    
    private var imageNames = ["testWorkout", "testWorkout", "testWorkout", "testWorkout", "testWorkout"]
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: collectionLayout)
        register(SelectionWorkoutCell.self, forCellWithReuseIdentifier: SelectionWorkoutCell.idSelectionWorkoutCell)
        configure()
        delegate = self
        dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        
        setupLayout()
        
    }
    
    private func setupLayout() {
        collectionLayout.minimumInteritemSpacing = 3
        collectionLayout.scrollDirection = .horizontal
    }
}

extension SelectWorkoutCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SelectionWorkoutCell.idSelectionWorkoutCell, for: indexPath) as? SelectionWorkoutCell else {
            return UICollectionViewCell()
        }
        let nameImage = imageNames[indexPath.row]
        cell.configure(nameImage: nameImage)
        return cell
    }
}

extension SelectWorkoutCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 5, height: collectionView.frame.height)
    }
}
