//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Ömer Faruk Öztürk on 27.11.2022.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let characterModel = try? newJSONDecoder().decode(CharacterModel.self, from: jsonData)

import Foundation

// MARK: - CharacterModel
struct WeatherModel: Codable {
    let request: Request
    let location: Location
    let current: Current
}

// MARK: - Current
struct Current: Codable {
    let observationTime: String
    let temperature, weatherCode: Int
    let weatherIcons: [String]
    let weatherDescriptions: [String]
    let windSpeed, windDegree: Int
    let windDir: String
    let pressure, precip, humidity, cloudcover: Int
    let feelslike, uvIndex, visibility: Int

    enum CodingKeys: String, CodingKey {
        case observationTime = "observation_time"
        case temperature
        case weatherCode = "weather_code"
        case weatherIcons = "weather_icons"
        case weatherDescriptions = "weather_descriptions"
        case windSpeed = "wind_speed"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressure, precip, humidity, cloudcover, feelslike
        case uvIndex = "uv_index"
        case visibility
    }
}

// MARK: - Location
struct Location: Codable {
    let name, country, region, lat: String
    let lon, timezoneID, localtime: String
    let localtimeEpoch: Int
    let utcOffset: String

    enum CodingKeys: String, CodingKey {
        case name, country, region, lat, lon
        case timezoneID = "timezone_id"
        case localtime
        case localtimeEpoch = "localtime_epoch"
        case utcOffset = "utc_offset"
    }
}

// MARK: - Request
struct Request: Codable {
    let type, query, language, unit: String
}
