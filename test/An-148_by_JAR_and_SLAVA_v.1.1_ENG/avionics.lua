size = {2048, 2048}

-- background image
defineProperty("bgdblack", loadImage("blackbackground.png"))

components = {
    texture { 
        position = { 0, 0, 1920, 1200 },
        image = get(bgdblack)
    },
}
