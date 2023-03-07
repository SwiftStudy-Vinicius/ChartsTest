//
//  StudentChart.swift
//  ChartsTets
//
//  Created by Vinícius Flores Ribeiro on 07/03/23.
//

import SwiftUI
import Charts

struct StudentChart: View {
    let mockData = MockData()
    var classroom: Classroom

    var body: some View {
        Chart {
            ForEach(mockData.studentNotes) { data in
                if classroom == .math {
                    BarMark(
                        x: .value("Student Name", data.name),
                        y: .value("Math Note", data.math)
                    )
                } else if classroom == .physics {
                    BarMark(
                        x: .value("Student Name", data.name),
                        y: .value("Math Note", data.physics)
                    )
                }
            }
        }
    }
}

struct StudentChart_Previews: PreviewProvider {
    static var previews: some View {
        StudentChart(classroom: .math)
    }
}
