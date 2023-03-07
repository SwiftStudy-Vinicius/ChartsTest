//
//  ChartPreviewView.swift
//  ChartsTets
//
//  Created by Vinícius Flores Ribeiro on 07/03/23.
//

import SwiftUI

struct ChartPreviewView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: StudentChartView(classroom: .math)) {
                VStack {
                    HStack {
                        Text("Math notes")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.black)
                    .padding()

                    StudentChart(classroom: .math)
                        .padding()
                }
                .frame(height: 200)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 11)
                        .stroke(.gray)
                })
                .padding()
            }

            NavigationLink(destination: StudentChartView(classroom: .physics)) {
                VStack {
                    HStack {
                        Text("Physics notes")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.black)
                    .padding()

                    StudentChart(classroom: .physics)
                        .padding()
                }
                .frame(height: 200)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 11)
                        .stroke(.gray)
                })
                .padding()
            }

            Spacer()
        }
        .navigationTitle("My Progress")

    }
}

struct ChartPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ChartPreviewView()
    }
}
