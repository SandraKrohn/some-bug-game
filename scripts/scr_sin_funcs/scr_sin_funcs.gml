// midpoint is the middle value that the wave will go around (-amplitude, midpoint, +amplitude)
// time should just be a counter
// period is how long the animation should take
function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint
}

// wave between two values rather than around a midpoint
function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum)
    var amplitude = maximum - midpoint
    return sine_wave(time, period, amplitude, midpoint)
}