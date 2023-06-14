//
//  ContentView.swift
//  PhoneNumberKitTest
//
//  Created by Roberto Pastor on 14/6/23.
//

import SwiftUI
import PhoneNumberKit

extension PhoneNumberKit {
    public static var instance: PhoneNumberKit = {
        return PhoneNumberKit()
    }()
}

class ContentViewModel {
     
    func validatePhone() {
        let phone = "+34 666666666"
        do {
            _ = try PhoneNumberKit.instance.parse(phone, ignoreType: true)
            print("\(phone) is a VALID phone")
        } catch {
            print("\(phone) is an INVALID phone:", error)
        }
    }
}

struct ContentView: View {
    
    let model = ContentViewModel()
    
    var body: some View {
        VStack {
            Button("Validate phone") {
                model.validatePhone()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
