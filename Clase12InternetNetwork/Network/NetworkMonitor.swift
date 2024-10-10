//
//  NetworkMonitor.swift
//  Clase12InternetNetwork
//
//  Created by Escurra Colquis on 10/10/24.
//

import Foundation
import Network

//This file is ViewModel

class NetworkMonitor: ObservableObject {
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "monitor")
    @Published var isConnected = false
    
    init() {
        monitor.pathUpdateHandler = {
            [weak self]
            path in
            guard let welf = self else { return }
            DispatchQueue.main.async {
                welf.isConnected = path.status == .satisfied ? true : false
            }
        }
        monitor.start(queue: queue)
    }
}
