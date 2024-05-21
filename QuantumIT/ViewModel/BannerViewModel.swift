//
//  BannerViewModel.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import Foundation
import Combine

class BannerViewModel: ObservableObject{
    
    @Published var bannerArray: [BannerModel] = []
    var cancellables = Set<AnyCancellable>()
    let service: BannerService
    
    init(service: BannerService){
        self.service = service
        loadBanner()
    }
    
    private func loadBanner(){
        service.getBanner()
            .sink{ _ in
                
            }receiveValue: { [weak self] returnedBanner in
                self?.bannerArray = returnedBanner
            }
            .store(in: &cancellables)
    }
}
