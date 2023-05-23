Config = {}

Config.Settings = {
    Framework = "qb", -- "qb" or "esx"
    Target = "qb", -- "qb" or "ox"
    Notify = "qb", -- Change your notify export here "qb" | "okok" | "ox"
    Cooldown = 60, -- 60 Minutes for each bank heist
}

Config.Vests = {
    Lightvest = {
        Item = "lightvest", -- Item name 
        Text = "Wearing the vest...", -- Label of progressbar
        Time = 3500, -- Time of progressbar
        animDict = "", -- Animation on progressbar
        anim = "", -- Animation on progressbar
        Armour = 35, -- Quantity % receive using the armour
    },
    Mediumvest = {
        Item = "mediumvest", -- Item name 
        Text = "Wearing the vest...",  -- Label of progressbar
        Time = 7500, -- Time of progressbar
        animDict = "", -- Animation on progressbar
        anim = "", -- Animation on progressbar
        Armour = 65, -- Quantity % receive using the armour
    },
    Heavyvest = {
        Item = "heavyvest", -- Item name 
        Text = "Wearing the vest...",  -- Label of progressbar
        Time = 10000, -- Time of progressbar
        animDict = "", -- Animation on progressbar
        anim = "", -- Animation on progressbar
        Armour = 100, -- Quantity % receive using the armour
    }
}