//
//  ContentView.swift
//  WatchStatusBarHidden Watch App
//
//  Created by 조성민 on 9/12/24.
//

import SwiftUI
import AVFoundation
import AVKit

struct OverlayPlayerForTimeRemove: View {
    var body: some View {
        VideoPlayer(player: nil,videoOverlay: { })
        .focusable(false)
        .disabled(true)
        .opacity(0)
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .background(OverlayPlayerForTimeRemove())
    }
}


#Preview {
    ContentView()
}

