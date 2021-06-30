local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
  
  local PlayerData              = {}
  local isBlip              = false
  
  ESX = nil
  
  Citizen.CreateThread(function()
      while ESX == nil do
          TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
          Citizen.Wait(0)
      end
      
      while ESX.GetPlayerData().job == nil do
          Citizen.Wait(10)
      end
  
      PlayerData = ESX.GetPlayerData()
      
  end)
  
  RegisterNetEvent('esx:playerLoaded')
  AddEventHandler('esx:playerLoaded', function(xPlayer)
      PlayerData = xPlayer
      PlayerData.job = job
      Citizen.Wait(5000)
  end)
  
  RegisterNetEvent('esx:setJob')
  AddEventHandler('esx:setJob', function(job)
      PlayerData.job = job
      
      Citizen.Wait(5000)
  end)
  
  -- MAP BLIP --
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(10)
      isBlip = true
      blip = AddBlipForCoord(11.15,-1599.47,29.38) -- Blip on Map Position
      SetBlipSprite  (blip, 79) -- Blip Model , you can change it from : https://wiki.gtanet.work/index.php?title=Blips
      SetBlipDisplay (blip, 4)
      SetBlipScale   (blip, 0.9)
      SetBlipCategory(blip, 3)
      SetBlipColour  (blip, 77) -- Blip Color , you can change it from : https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString("Tacos Loccos") -- Name of the Blip on the map
      EndTextCommandSetBlipName(blip)
    end
    end
  end)
 
  
  local inKitchen = false
  
  -- Taco Cooking Spot 1
  Citizen.CreateThread(function()
      while true do
          Citizen.Wait(1)
          
          if PlayerData.job ~= nil and PlayerData.job.name == 'x' then -- change 'x' into the name of that job that you made that will work in the kitchen
          DrawMarker(0, 11.15,-1599.47,29.38, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 0,0,255, 100, false, true, 2, false, false, false, false) -- Cooking Marker Position.
              
          local coords = GetEntityCoords(PlayerPedId())
          local distance = GetDistanceBetweenCoords(coords, 11.15,-1599.47,29.38, true)
          
          if distance < 1.0 then
              ESX.ShowHelpNotification('~g~Press~s~ ~r~[E]~s~ ~g~To Cook Food~s~')	
              inKitchen = true
          elseif distance > 1.0 then
              inKitchen = false
          end
          
          if IsControlJustReleased(0, Keys['E']) and inKitchen then
              ESX.UI.Menu.CloseAll()
              tacofoodmenu()
          end
          end
      end
  end)
  
  
  -- Taco Cooking Spot 2
  Citizen.CreateThread(function()
      while true do
          Citizen.Wait(1)
          
          if PlayerData.job ~= nil and PlayerData.job.name == 'x' then -- change 'x' into the name of that job that you made that will work in the kitchen
          DrawMarker(0, 15.99,-1598.51,29.38, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 0,0,255, 100, false, true, 2, false, false, false, false) -- Cooking Marker Position.

          local coords = GetEntityCoords(PlayerPedId())
          local distance = GetDistanceBetweenCoords(coords, 15.99,-1598.51,29.38, true)
          
          if distance < 1.0 then
              ESX.ShowHelpNotification('~g~Press~s~ ~r~[E]~s~ ~g~To Cook Food~s~')	
              inKitchen = true
          elseif distance > 1.0 then
              inKitchen = false
          end
          
          if IsControlJustReleased(0, Keys['E']) and inKitchen then
              ESX.UI.Menu.CloseAll()
              tacofoodmenu()
          end
          end
      end
  end)
  
-- Make Drinks Here
  Citizen.CreateThread(function()
      while true do
          Citizen.Wait(1)
          
          if PlayerData.job ~= nil and PlayerData.job.name == 'x' then -- change 'x' into the name of that job that you made that will work in the kitchen
          DrawMarker(0, 13.65,-1596.45,29.38, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 0,0,255, 100, false, true, 2, false, false, false, false) -- Drinking Marker Position
              
          local coords = GetEntityCoords(PlayerPedId())
          local distance = GetDistanceBetweenCoords(coords, 13.65,-1596.45,29.38, true)
          
          if distance < 1.0 then
              ESX.ShowHelpNotification('~g~Press~s~ ~r~[E]~s~ ~g~To Make A Drink~s~')	
              inKitchen = true
          elseif distance > 1.0 then
              inKitchen = false
          end
          
          if IsControlJustReleased(0, Keys['E']) and inKitchen then
              ESX.UI.Menu.CloseAll()
              tacodrinksmenu()
          end
          end
      end
  end)
  
-- taco cooking animation
  RegisterNetEvent('tacoscooking:animation')
  AddEventHandler('tacoscooking:animation', function()
      TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true) -- Cooking Animation
      Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
      ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
  end)

  -- Taco drinks animation
  RegisterNetEvent('tacosdrinks:animation')
  AddEventHandler('tacosdrinks:animation', function()
      TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true) -- Drink making animation
      Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
      ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
  end)
  
  -- Taco Food Menu
  function tacofoodmenu()
      ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'tacoscooking',
          {
              title    = 'TACOS LOCCOS KITCHEN',
              align    = 'center',
              elements = { 
                  { label = 'Make A Pork Taco ', value = 'tacofood1' }, -- Change the "Menu 1" label to your combination item 
                  { label = 'Make A Fish Taco ', value = 'tacofood2' },
                  { label = 'Make A Burrito ', value = 'tacofood3' }
              }
          },
      function(data, menu)
          local value = data.current.value
  
          if value == 'tacofood1' then
              menu.close()
              TriggerServerEvent('tacoscooking:combination1')
          elseif value == 'tacofood2' then
              menu.close()
              TriggerServerEvent('tacoscooking:combination2')
          elseif value == 'tacofood3' then
              menu.close()
              TriggerServerEvent('tacoscooking:combination3')
          end
      end,
      function(data, menu)
          menu.close()
      end)
  end
  
  
  -- Taco Drinks Menu (NOT FINAL)
  function tacodrinksmenu()
      ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'tacosdrinks',
          {
              title    = 'TACOS LOCCOS SODA MACHINE',
              align    = 'center',
              elements = { 
                  { label = 'Make A Sportsdrink ', value = 'tacodrinks1' }, 
                  { label = 'Make A Coca Cola ', value = 'tacodrinks2' }
              }
          },
      function(data, menu)
          local value = data.current.value
  
          if value == 'tacodrinks1' then
              menu.close()
              TriggerServerEvent('tacosdrinks:combination1')
          elseif value == 'tacodrinks2' then
              menu.close()
              TriggerServerEvent('tacosdrinks:combination2')
          end
      end,
      function(data, menu)
          menu.close()
      end)
  end

  