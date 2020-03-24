//
//  WebView.swift
//  iHackerNews
//
//  Created by Darren Rambaud on 3/23/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let u = url {
            if let uri = URL(string: u) {
                let req = URLRequest(url: uri)
                uiView.load(req)
            }
        }
    }
}
