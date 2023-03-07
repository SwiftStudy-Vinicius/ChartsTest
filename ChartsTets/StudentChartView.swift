//
//  StudentChartView.swift
//  ChartsTets
//
//  Created by Vinícius Flores Ribeiro on 07/03/23.
//

import SwiftUI
import Charts

struct StudentChartView: View {
    var classroom: Classroom

    var body: some View {
        VStack {
            StudentChart(classroom: classroom)
                .frame(height: 400)
            .padding()
        }
        .navigationTitle(classroom == .math ? "Math notes" : "Physics notes")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StudentChartView_Previews: PreviewProvider {
    static var previews: some View {
        StudentChartView(classroom: .math)
    }
}
