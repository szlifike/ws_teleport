local options = {}
for _, v in ipairs(Config.TeleportPoints) do
    table.insert(options, {
        title = v.label,
        onSelect = function()
            SetEntityCoords(PlayerPedId(), v.coords)
        end
    })
end

RegisterCommand(Config.OpenTeleportMenu, function()
    lib.registerContext({
        id = 'teleport_menu',
        title = Config.TeleportMenuTitle,
        options = options
    })
    lib.showContext('teleport_menu')
end)

RegisterKeyMapping(Config.OpenTeleportMenu, 'Teleport Menu', 'keyboard', Config.TeleportMenuKey)
