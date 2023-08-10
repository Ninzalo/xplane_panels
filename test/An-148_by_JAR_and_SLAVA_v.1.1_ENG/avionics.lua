size = {2048, 2048}

-- background image
defineProperty("bgdblack", loadImage("blackbackground.png", 0, 0, 1920, 1200 ))

components = {
    texture { 
        position = { 0, 0, 1920, 1200 },
        image = get(bgdblack)
    },
}
