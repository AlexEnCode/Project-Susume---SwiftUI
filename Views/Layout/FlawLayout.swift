import SwiftUI

struct FlowLayout: Layout {
    var spacing: CGFloat = 8
    var alignment: HorizontalAlignment = .leading

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        var width: CGFloat = 0
        var height: CGFloat = 0
        var currentLineWidth: CGFloat = 0
        var currentLineHeight: CGFloat = 0
        let maxWidth = proposal.replacingUnspecifiedDimensions().width

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if currentLineWidth + size.width + spacing > maxWidth {
                width = max(width, currentLineWidth)
                height += currentLineHeight + spacing
                currentLineWidth = size.width
                currentLineHeight = size.height
            } else {
                currentLineWidth += size.width + spacing
                currentLineHeight = max(currentLineHeight, size.height)
            }
        }

        width = max(width, currentLineWidth)
        height += currentLineHeight

        return CGSize(width: width, height: height)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var x = bounds.minX
        var y = bounds.minY
        var currentLineHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if x + size.width > bounds.maxX {
                x = bounds.minX
                y += currentLineHeight + spacing
                currentLineHeight = 0
            }

            subview.place(
                at: CGPoint(x: x, y: y),
                proposal: ProposedViewSize(size)
            )

            x += size.width + spacing
            currentLineHeight = max(currentLineHeight, size.height)
        }
    }
}
