//
//  AppInfoLiveStore.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation

struct AppInfoLiveStore {
    let name: String = "My Income"
    let description: String = "'My Income' caculates your income from hourly rates or salary, including overtime, and provide detailed financial insights."
    let developer: String = "NJ Development"
    let website: String = "https://www.linkedin.com/in/nelson-pereira-70b113100/"
    let agreements: Agreements = .init()
    
    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "-"
    }
    
    var compatibilityVersion: String {
        if let minimumVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minimumVersion)+"
        }
        return "-"
    }
}

extension AppInfoLiveStore {
    struct Agreements {
        let privacyPolicyUrl: String = "https://www.nelsonpereira.com.br/privacy-policy/"
        let termsAndConditionsUrl: String = "https://www.nelsonpereira.com.br/terms-and-conditions/"
        let copyrightPolicyUrl: String = "https://www.nelsonpereira.com.br/copyright-policy/"
        let disclaimerUrl: String = "https://www.nelsonpereira.com.br/disclaimer/"
    }
}
