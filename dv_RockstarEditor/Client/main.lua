lib.registerContext({
    id = 'Menu_Rockstar_Editor',
    title = Config.Text['title'],
    options = {
       
        {
            title = Config.Text['startrecord'],
            event  = 'dv_Menu:Record',
          
        },
        {
            title = Config.Text['stopsaves'],
            event  = 'dv_Menu:Save',
            
        },
        {
            title = Config.Text['stopdelete'],
            event  = 'dv_Menu:Delete',

            
        },
        {
            title = Config.Text['openrockstar'],
            event  = 'dv_Menu:Editor',     
        }

    }

})

 RegisterCommand(Config.Command , function()
        lib.showContext('Menu_Rockstar_Editor')
 end)

RegisterNetEvent("dv_Menu:Record")
AddEventHandler("dv_Menu:Record", function()
    StartRecording(1) 
   
    if Config.Notification == 'default' then
        exports["esx_notify"]:Notify("info", 5000, Config.Text['start'])

    elseif Config.Notification == 'okokNotify' then
        exports['okokNotify']:Alert("Rockstar Editor", Config.Text['start'], 5000, 'info')
 
    end 
end)
 

RegisterNetEvent("dv_Menu:Save")
AddEventHandler("dv_Menu:Save", function()
    StopRecordingAndSaveClip()
    
    if Config.Notification == 'default' then
        exports["esx_notify"]:Notify("info", 5000, Config.Text['stop'])

    elseif Config.Notification == 'okokNotify' then
        exports['okokNotify']:Alert("Rockstar Editor", Config.Text['stop'], 5000, 'info')
    
    end 
end)

RegisterNetEvent("dv_Menu:Delete")
AddEventHandler("dv_Menu:Delete", function()
    StopRecordingAndSaveClip()
    
    if Config.Notification == 'default' then
        exports["esx_notify"]:Notify("info", 5000, Config.Text['delete'])

    elseif Config.Notification == 'okokNotify' then
        exports['okokNotify']:Alert("Rockstar Editor", Config.Text['delete'], 5000, 'info')
    
    end
end)


RegisterNetEvent("dv_Menu:Editor")
AddEventHandler("dv_Menu:Editor", function()
    NetworkSessionLeaveSinglePlayer() 
    ActivateRockstarEditor() 
end)