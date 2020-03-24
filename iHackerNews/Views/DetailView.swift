//
//  DetailView.swift
//  iHackerNews
//
//  Created by Darren Rambaud on 3/23/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}
