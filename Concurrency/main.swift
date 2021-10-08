//
//  main.swift
//  Concurrency
//
//  Created by 2lup on 08.10.2021.
//

import Foundation

print("Hello, World!")


////MARK: Определение и вызов асинхронных функций
//print("\n//Определение и вызов асинхронных функций")
//
//func listPhotos(inGallery name: String) async -> [String] {
//    let result = // ... some asynchronous networking code ...
//    return result
//}
//
//let photoNames = await listPhotos(inGallery: "Summer Vacation")
//let sortedNames = photoNames.sorted()
//let name = sortedNames[1]
//let photo = await downloadPhoto(named: name)
//show(photo)
//
////---
//
//func listPhotos(inGallery name: String) async -> [String] {
//    await Task.sleep(2 * 1_000_000_000)  // Two seconds
//    return ["IMG001", "IMG99", "IMG0404"]
//}
//
////MARK: Асинхронные последовательности
//print("\n//Асинхронные последовательности")
//
//let handle = FileHandle.standardInput
//for try await line in handle.bytes.lines {
//    print(line)
//}
//
//
////MARK: Параллельный вызов асинхронных функций
//print("\n//Параллельный вызов асинхронных функций")
//
//let firstPhoto = await downloadPhoto(named: photoNames[0])
//let secondPhoto = await downloadPhoto(named: photoNames[1])
//let thirdPhoto = await downloadPhoto(named: photoNames[2])
//
//let photos = [firstPhoto, secondPhoto, thirdPhoto]
//show(photos)
//
////---
//
//async let firstPhoto = downloadPhoto(named: photoNames[0])
//async let secondPhoto = downloadPhoto(named: photoNames[1])
//async let thirdPhoto = downloadPhoto(named: photoNames[2])
//
//let photos = await [firstPhoto, secondPhoto, thirdPhoto]
//show(photos)
//
//
////MARK: Задачи и группы задач
//print("\n//Задачи и группы задач")
//
//await withTaskGroup(of: Data.self) { taskGroup in
//    let photoNames = await listPhotos(inGallery: "Summer Vacation")
//    for name in photoNames {
//        taskGroup.async { await downloadPhoto(named: name) }
//    }
//}
//
//
////MARK: Неструктурированный параллелизм
//print("\n//Неструктурированный параллелизм")
//
//let newPhoto = // ... какие-то данные по фото ...
//let handle = async {
//    return await add(newPhoto, toGalleryNamed: "Spring Adventures")
//}
//let result = await handle.get()
//
//
////MARK: Акторы
//print("\n//Акторы")
//
//actor TemperatureLogger {
//    let label: String
//    var measurements: [Int]
//    private(set) var max: Int
//
//    init(label: String, measurement: Int) {
//        self.label = label
//        self.measurements = [measurement]
//        self.max = measurement
//    }
//}
//
//
//let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
//print(await logger.max)
//// Выведет "25"
//
//
//extension TemperatureLogger {
//    func update(with measurement: Int) {
//        measurements.append(measurement)
//        if measurement > max {
//            max = measurement
//        }
//    }
//}
//
//print(logger.max)  // Ошибка
