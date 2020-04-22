//
//  WebView.swift
//  H4X0R News
//
//  Originally created by Angela Yu on 08/09/2019.
//  Adapted by Denis Aleksandrov on 2020-04-22.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context ) {
        if let safeString = urlString {
            if let safeUrl = URL(string: safeString) {
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
        }
    }
}
