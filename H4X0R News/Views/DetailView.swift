//
//  DetailView.swift
//  H4X0R News
//
//  Originally created by Angela Yu on 08/09/2019.
//  Adapted by Denis Aleksandrov on 2020-04-22.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com ")
    }
}
