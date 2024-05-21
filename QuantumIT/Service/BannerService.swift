//
//  BannerService.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import Foundation
import Combine

class BannerService: ObservableObject{
        
    enum ServiceError: Error {
          case invalidURL
          case networkError(Error)
          case invalidResponse
          case invalidData
      }
    
    let url: URL = URL(string: "https://securityoncalls.com/projects/brad/api/banners")!
    
    func getBanner() -> AnyPublisher<[BannerModel], Error>{
        URLSession.shared.dataTaskPublisher(for: url)
            .map({$0.data})
            .decode(type: [BannerModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
