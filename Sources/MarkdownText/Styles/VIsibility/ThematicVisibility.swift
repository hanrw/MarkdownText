import SwiftUI

struct ThematicBreakMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Backport<Any>.Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownThematicBreakVisibility: ThematicBreakMarkdownVisibility.Value {
        get { self[ThematicBreakMarkdownVisibility.self] }
        set { self[ThematicBreakMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    func markdownThematicBreak(_ visibility: Backport<Any>.Visibility) -> some View {
        environment(\.markdownThematicBreakVisibility, visibility)
    }
}