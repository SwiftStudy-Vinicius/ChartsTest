//
//  MockData.swift
//  ChartsTets
//
//  Created by Vinícius Flores Ribeiro on 07/03/23.
//

import Foundation

class MockData {

    var studentNotes: [Student] = [
        .init(name: "A", math: 8.0, physics: 2.0),
        .init(name: "B", math: 7.5, physics: 8.5),
        .init(name: "C", math: 9.0, physics: 7.0),
        .init(name: "D", math: 6.5, physics: 4.0),
        .init(name: "E", math: 4.0, physics: 3.5),
        .init(name: "F", math: 3.8, physics: 7.7),
        .init(name: "G", math: 10.0, physics: 5.8),
        .init(name: "H", math: 2.9, physics: 6.9),
        .init(name: "I", math: 3.0, physics: 1.0),
        .init(name: "J", math: 9.4, physics: 5.4),
        .init(name: "K", math: 3.6, physics: 3.2)
    ]

}

struct Student: Identifiable {
    var name: String
    var math: Double
    var physics: Double

    var id = UUID()

}

enum Classroom {
    case math
    case physics
}
