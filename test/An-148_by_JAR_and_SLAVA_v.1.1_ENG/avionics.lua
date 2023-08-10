size = {2048, 2048}

-- background image
defineProperty("background", loadImage("whitebackground.png", 0, 0, 1920, 1200 ))

components = {
    texture { 
        position = { 0, 0, 1920, 1200 },
        image = get(background)
    },
}
