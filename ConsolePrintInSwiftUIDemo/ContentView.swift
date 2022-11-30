//
//  ContentView.swift
//  ConsolePrintInSwiftUIDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack {
            let _ = print("Inside the VSTACK")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Toggle(isOn: $isOn) {
                Text("Toggle")
            }
            .onChange(of: isOn) { newValue in
                print("Toggle is \(newValue)")
            }
        }
        .onAppear{
            print("VSTACK appeared")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
