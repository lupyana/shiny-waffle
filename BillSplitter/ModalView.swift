//
//  ModalView.swift
//  BillSplitter
//
//  Created by Lupyana Mbembati on 06/11/2019.
//  Copyright © 2019 Lupyana Mbembati. All rights reserved.
//

import Foundation
import SwiftUI

struct ModalView: View {
    // 1.
    @Binding var showModal: Bool
    var bill:Double = 0.0
    
    var body: some View {
        VStack {
            Text("Total bill per person is \(round(bill * 1000) / 1000) $")
                .padding()
            // 2.
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true))
    }
}
