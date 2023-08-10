size = {2048, 2048}

background = subpanel {
position = { 40, 0, 1920, 1080 }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = true; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "background";
components = {
    background{
        position = { 0, 0, 1920, 1080 },
    };
};
}
