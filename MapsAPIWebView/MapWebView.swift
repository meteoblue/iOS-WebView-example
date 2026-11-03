import SwiftUI
import WebKit

// The map itself is implemented in map.html using the meteoblue Maps Plugin.
// Docs: https://docs.meteoblue.com/en/weather-apis/maps-api/maps-plugin
struct MapWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: "map", withExtension: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {}
}
