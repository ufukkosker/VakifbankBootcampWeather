//
//  WeatherDetailVC.swift
//  WeatherApp
//
//  Created by Ufuk on 27.11.2022.
//

import UIKit

class WeatherDetailVC: UIViewController {

    @IBOutlet private weak var weatherImageView: UIImageView!
    @IBOutlet private weak var temperatureLabel: UILabel!
    @IBOutlet private weak var windSpeedLabel: UILabel!
    @IBOutlet private weak var windDegreeLabel: UILabel!
    @IBOutlet private weak var humidityLabel: UILabel!
    @IBOutlet private weak var locationNameLabel: UILabel!
    @IBOutlet private weak var latLabel: UILabel!
    @IBOutlet private weak var lonLabel: UILabel!
    @IBOutlet private weak var localTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func config(with model: WeatherModel) {
//        if model.current.weatherDescriptions.first == "Clear" {
//            weatherImageView.image = UIImage(systemName: "sun.max")
//        } else if model.current.weatherDescriptions.first == "Sunny" {
//            weatherImageView.image = UIImage(systemName: "sun.max")
//        } else if model.current.weatherDescriptions.first == "Cloudy" {
//            weatherImageView.image = UIImage(systemName: "cloud")
//        }
        
        temperatureLabel.text = String(model.current.temperature)
        windSpeedLabel.text = String(model.current.windSpeed)
        windDegreeLabel.text = String(model.current.windDegree)
        humidityLabel.text = String(model.current.humidity)
        localTimeLabel.text = model.location.name
        latLabel.text = model.location.lat
        lonLabel.text = model.location.lon
        localTimeLabel.text = model.location.localtime
    }
}
