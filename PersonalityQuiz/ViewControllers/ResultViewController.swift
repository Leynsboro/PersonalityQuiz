//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Илья Гусаров on 21.04.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var youAreOutlet: UILabel!
    @IBOutlet var desctiptionOfYou: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    private func updateResult() {
        var frequencyOfAnimals: [Animal : Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
        
        //В итоге подсмотрел, но в свое оправдание скажу, что мой код был примерно такой же
        //и основан на словаре, но я просто почему-то не допер, что можно вставить в ключ словаря
        //тип энимал. Тормоз)
    }
    
    private func updateUI(with animal: Animal){
        youAreOutlet.text = "Вы - \(animal.rawValue)"
        desctiptionOfYou.text = animal.definition
    }
}

