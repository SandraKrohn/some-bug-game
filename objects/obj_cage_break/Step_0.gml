image_alpha -= 0.01

if image_alpha <= 0 {
	instance_destroy()
}

timer++
image_xscale = sine_between(timer, 30, 0.9, 1.1)
image_yscale = sine_between(timer, 30, 1.1, 0.9)