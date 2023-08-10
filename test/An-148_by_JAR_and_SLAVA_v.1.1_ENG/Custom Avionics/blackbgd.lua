size = {1920, 1080}

-- background image
defineProperty("blackbgd", loadImage("blackbackground.png"))

components = {

texture { 
        image = get(blackbgd)
	position = { 0, 0, size[1], size[2] },
    },
} 
