//
//  ContentView.swift
//  Form
//
//  Created by Lucia Rigoni Freire on 08/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors ").padding(5).lineLimit(nil)) {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination:Text("Scheduled destination")) {
                        VStack {
                            Text("Sunset").foregroundColor(.blue)
                            Text("Sunrise").foregroundColor(.blue)
                            }
                        }.fixedSize()
                    }
                }
                
                Section(header: Text("")) {
                    Toggle(isOn: $manuallyEnabledTillTomorrow) {
                        Text("Manually Enabled Till Tomorrow")
                    }
                }
                
                Section(header: Text("Temperature")) {
                    HStack {
                        Text("Less warm")
                        Slider(value: $colorTemperature)
                        Text("More warm")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
