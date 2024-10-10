//
//  ContentView.swift
//  Clase12InternetNetwork
//
//  Created by Escurra Colquis on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var networkMonitor = NetworkMonitor()
    
    var body: some View {
        VStack {
            Text("Internet")
                .bold()
                .font(.system(size: 40))
                .foregroundStyle(networkMonitor.isConnected ? .blue : .red)
                .padding(.top, 20)
            Spacer()
            Image(systemName: networkMonitor.isConnected ? "wifi" : "wifi.slash")
                .font(.system(size: 300))
                .foregroundStyle(networkMonitor.isConnected ? .blue : .red)
            Text(networkMonitor.isConnected ? "Conectado a internet" : "No estas conectado a internet")
                .font(.system(size: 20, weight: .light))
                .foregroundStyle(networkMonitor.isConnected ? .blue : .red)
                .padding(EdgeInsets())
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
