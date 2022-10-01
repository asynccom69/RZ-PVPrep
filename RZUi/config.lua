Darkshop = Darkshop or {}

Darkshop.Items = {
    { item = "drill", label = "Perceuse", price = 500, src = '../../html/img/drill.png', type = "item" },
    { item = "lockpick", label = "Outil de crochetage", price = 60, src = '../../html/img/lockpick.png', type = "item" },
    { item = "bagpack", label = "Sac a dos", price = 100, src = '../../html/img/bags.png', type = "item" },
}

Darkshop.Weapons = {
    { item = "weapon_pistol", label = "Beretta",      price = 15000, src = '../../html/img/pistol.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_snspistol", label = "SNS Pistol",    price = 6500, src = '../../html/img/snspistol.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
}

Darkshop.WeaponsPlus = {
    { item = "weapon_pistol", label = "Beretta",      price = 15000, src = '../../html/img/pistol.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_mimicrosmg", label = "Micro SMG",    price = 55000, src = '../../html/img/mimicrosmg.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_compactrifle", label = "AK-U",    price = 75000, src = '../../html/img/compactrifle.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_minismg", label = "Skorpion",    price = 45000, src = '../../html/img/minismg.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_pumpshotgun", label = "Regminton",    price = 125000, src = '../../html/img/pumpshotgun.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_sawnoffshotgun", label = "Canon Scié",    price = 45000, src = '../../html/img/sawnoffshotgun.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_heavypistol", label = "Colt",    price = 25000, src = '../../html/img/heavypistol.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_navyrevolver", label = "Navy Revolver",    price = 50000, src = '../../html/img/navyrevolver.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_assaultrifle", label = "AK-47",    price = 170000, src = '../../html/img/ak47.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
    { item = "weapon_pistol50", label = "Calibre 50",    price = 30000, src = '../../html/img/pistol50.png', type = "item" }, -- Type in "weapons" if you not use items weapons 
}

Darkshop.Drugs = {
    { item = "graineweed", label = "Graine de weed", price = 25, src = '../../html/img/planweed.png', type = "item" },
    { item = "fertilisant", label = "Fertilisant", price = 20, src=  '../../html/img/fertilisant.png', type = "item" },
    { item = "kerozen", label = "Kerozen", price = 75, src = '../../html/img/kerozen.png', type = "item" },
    { item = "methylamine", label = "Methylamine", price = 75, src = '../../html/img/methylamine.png', type = "item" },
    { item = "phenylacetone", label = "Phenylacetone", price= 75, src = '../../html/img/phenylacetone.png', type = "item" },
    { item = "whitewash", label = "Chaux", price = 50, src = '../../html/img/whitewash.png', type = "item" },
}

Darkshop.Pos = {
    {spawn = vector4(628.2, -1336.93, 9.73, 199.07), delivery = vector3(690.77, -1533.48, 9.71)},
    -- {spawn = vector4(2355.2, 3161.44, 48.12, 109.45), delivery = vector3(2386.44, 3293.36, 47.56)},
}

Darkshop.Peds = {
	"u_m_y_proldriver_01",
	"g_m_m_chicold_01",
	"g_m_y_lost_02"
}

Darkshop.Vehicles = {
  "mule3", 
  "boxville4", 
  "burrito3", 
  "pony"
}

Darkshop.ListPedsCreated = {}
Darkshop.CommandsDetails = {}

Darkshop.Vehicle = nil
Darkshop.Groups = 0
Darkshop.NumberPeds = 1
Darkshop.Blips = nil