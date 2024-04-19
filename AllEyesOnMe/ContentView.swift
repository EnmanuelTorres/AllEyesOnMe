//
//  ContentView.swift
//  AllEyesOnMe
//
//  Created by ENMANUEL TORRES on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SumViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hands Up")
            
            TextField("Number 1: ", text: $viewModel.number1)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Number 2: ", text: $viewModel.number2)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button {
                viewModel.sum()
            } label: {
                Text("Sumar")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }

            Text("Resultado: \(viewModel.result)")
                .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
