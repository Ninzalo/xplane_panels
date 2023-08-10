size = {1920, 1200}

-- background image
defineProperty("blackbgd", loadImage("blackbackground.png", 0, 0, size[1], size[2] ))

components = {

texture { 
        position = { 0, 0, size[1], size[2] },
        image = get(blackbgd)
    },
} 
