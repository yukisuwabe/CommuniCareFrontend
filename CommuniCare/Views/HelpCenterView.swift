//
//  HelpCenterView.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 7/14/24.
//

import SwiftUI

struct HelpCenterView: View {
    var body: some View {
        
        Text("Help Center")
            .font(.system(size: 35))
            .fontWeight(.bold)
            .foregroundStyle(Color.matchaGreen)
        
        Text("Use CommuniCare to rapidly prototype and test builds of your app during the development process. Installed as part of the Xcode tools, Simulator runs on your Mac and behaves like a standard Mac app while simulating iPhone, iPad, Apple Watch, or Apple TV environments. Each combination of a simulated device and software version is considered its own simulation environment, independent of the others, with its own settings and files. These settings and files exist on every device you test within a simulation environment. Open multiple simulated devices for interactions such as an iPhone and a paired Apple watch.").padding()
//        Spacer()
        Text("             ")
        Text("Use Simulator to: Interact with your apps on iOS, watchOS, and tvOS using your pointer and keyboard. Prototype and debug your apps. Optimize your graphics. Test your apps.").padding()
        Text("             ")
//        Spacer()
        Text("Was this help page useful? Send feedback.").padding()
    }
}

#Preview {
    HelpCenterView()
}
