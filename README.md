# Watch StatusBar Hidden

Source: [凌嘉徽's medium](https://medium.com/@zj56789012/how-to-hide-time-on-apple-watch-9893ed0eff09)

<div style="display: flex">
    <img src="assets/visible.png" style="margin-right: 20px" width="20%">
    <img src="assets/invisible.png" width="20%">
</div>

<br/>

```
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
```
