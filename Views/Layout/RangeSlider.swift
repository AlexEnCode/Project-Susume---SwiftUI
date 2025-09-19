

import SwiftUI

struct RangeSlider: View {
    @Binding var range: ClosedRange<Int>
    let bounds: ClosedRange<Int>

    var body: some View {
        VStack {
            Slider(value: Binding(get: {
                Double(range.lowerBound)
            }, set: { newValue in
                range = Int(newValue)...range.upperBound
            }), in: Double(bounds.lowerBound)...Double(bounds.upperBound - 1), step: 1)

            Slider(value: Binding(get: {
                Double(range.upperBound)
            }, set: { newValue in
                range = range.lowerBound...Int(newValue)
            }), in: Double(bounds.lowerBound + 1)...Double(bounds.upperBound), step: 1)
        }
    }
}

