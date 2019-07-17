addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("minigun", weaponSkill, "weapon_range", 75)
            setWeaponProperty("minigun", weaponSkill, "target_range", 50)
            setWeaponProperty("minigun", weaponSkill, "accuracy", 5)
            setWeaponProperty("minigun", weaponSkill, "damage", 30)
            setWeaponProperty("minigun", weaponSkill, "maximum_clip_ammo", 500)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("Combat Shotgun", weaponSkill, "weapon_range", 75)
            setWeaponProperty("Combat Shotgun", weaponSkill, "target_range", 75)
            setWeaponProperty("Combat Shotgun", weaponSkill, "accuracy", 5)
            setWeaponProperty("Combat Shotgun", weaponSkill, "damage", 15)
            setWeaponProperty("Combat Shotgun", weaponSkill, "maximum_clip_ammo", 7)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("Sawed-Off", weaponSkill, "weapon_range", 75)
            setWeaponProperty("Sawed-Off", weaponSkill, "target_range", 50)
            setWeaponProperty("Sawed-Off", weaponSkill, "accuracy", 5)
            setWeaponProperty("Sawed-Off", weaponSkill, "damage", 5)
            setWeaponProperty("Sawed-Off", weaponSkill, "maximum_clip_ammo", 7)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("uzi", weaponSkill, "weapon_range", 75)
            setWeaponProperty("uzi", weaponSkill, "target_range", 50)
            setWeaponProperty("uzi", weaponSkill, "accuracy", 5)
            setWeaponProperty("uzi", weaponSkill, "damage", 6)
            setWeaponProperty("uzi", weaponSkill, "maximum_clip_ammo", 50)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("mp5", weaponSkill, "weapon_range", 100)
            setWeaponProperty("mp5", weaponSkill, "target_range", 25)
            setWeaponProperty("mp5", weaponSkill, "accuracy", 100)
            setWeaponProperty("mp5", weaponSkill, "damage", 25)
            setWeaponProperty("mp5", weaponSkill, "maximum_clip_ammo", 40)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("deagle", weaponSkill, "weapon_range", 100)
            setWeaponProperty("deagle", weaponSkill, "target_range", 25)
            setWeaponProperty("deagle", weaponSkill, "accuracy", 100)
            setWeaponProperty("deagle", weaponSkill, "damage", 180)
            setWeaponProperty("deagle", weaponSkill, "maximum_clip_ammo",7)
        end
    end
)

addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("satchel", weaponSkill, "weapon_range", 100)
            setWeaponProperty("satchel", weaponSkill, "target_range", 25)
            setWeaponProperty("satchel", weaponSkill, "accuracy", 100)
            setWeaponProperty("satchel", weaponSkill, "damage", 45)
            setWeaponProperty("satchel", weaponSkill, "maximum_clip_ammo", 1)
        end
    end
)


addEventHandler ( "onResourceStart", root,
    function ( )
        for _,weaponSkill in ipairs({"poor","std","pro"}) do  
            setWeaponProperty("tec-9", weaponSkill, "weapon_range", 75)
            setWeaponProperty("tec-9", weaponSkill, "target_range", 50)
            setWeaponProperty("tec-9", weaponSkill, "accuracy", 5)
            setWeaponProperty("tec-9", weaponSkill, "damage", 6)
            setWeaponProperty("tec-9", weaponSkill, "maximum_clip_ammo", 50)
        end
    end
)
