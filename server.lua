ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
-- Pork Taco
RegisterServerEvent('tacoscooking:combination1') 
AddEventHandler('tacoscooking:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('processed_meat') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('tortilla_wrap') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('vegetables') -- Item 3
	
	if xItem1.count > 3 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('tacoscooking:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('pork_taco', 1) -- Puts the cooked item into your inventory
					xPlayer.removeInventoryItem('processed_meat', 4) -- removing the Processed meat (Item 1)
					xPlayer.removeInventoryItem('tortilla_wrap', 2) -- removing the Tortilla Wrap  (Item 2)
					xPlayer.removeInventoryItem('vegetables', 2) -- removing the Vegetables (Item 3)
					TriggerClientEvent('esx:showNotification', source, 'You made ~y~x1~s~ ~b~Pork Taco~s~.')
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Vegetables!~s~ ~b~[Need 2]~s~') --xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Tortilla Wrap!~s~ ~b~[Need 2]~s~') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Processed Meat!~s~ ~b~[Need 4]~s~') --xItem1 if else function
	end 
end)


--Seafood Taco
RegisterServerEvent('tacoscooking:combination2')
AddEventHandler('tacoscooking:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('fish') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('tortilla_wrap') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('vegetables') -- Item 3
	
	if xItem1.count > 3 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('tacoscooking:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('fish_taco', 1) -- Puts the cooked item into your inventory
					xPlayer.removeInventoryItem('fish', 4) -- removing the Processed meat (Item 1)
					xPlayer.removeInventoryItem('tortilla_wrap', 2) -- removing the Tortilla Wrap  (Item 2)
					xPlayer.removeInventoryItem('vegetables', 2) -- removing the vegetables (Item 3)
					TriggerClientEvent('esx:showNotification', source, 'You made ~y~x1~s~ ~b~Seafood Taco~s~.')
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Vegetables!~s~ ~b~[Need 2]~s~') --xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Tortilla Wrap!~s~ ~b~[Need 2]~s~') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Fish!~s~ ~b~[Need 4]~s~') --xItem1 if else function
	end 
end)

--Burrito
RegisterServerEvent('tacoscooking:combination3')
AddEventHandler('tacoscooking:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('processed_meat') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('tortilla_wrap') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('vegetables') -- Item 3
	local xItem4 = xPlayer.getInventoryItem('fish') -- Item 4
	
	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
				if xItem4.count > 2 then -- Item 4 count
						TriggerClientEvent('tacoscooking:animation' , source) -- Play animation function
						Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
						xPlayer.addInventoryItem('loccos_burrito', 1) -- Puts the cooked item into your inventory
						xPlayer.removeInventoryItem('processed_meat', 3) -- removing the Processed meat (Item 1)
						xPlayer.removeInventoryItem('tortilla_wrap', 2) -- removing the Tortilla Wrap  (Item 2)
						xPlayer.removeInventoryItem('vegetables', 2) -- removing the vegetables (Item 3)
						xPlayer.removeInventoryItem('fish', 3) -- removing the Fish (Item 4)
						TriggerClientEvent('esx:showNotification', source, 'You made ~y~x1~s~ ~b~Burritos Loccos~s~.')
				else
						TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Fish!~s~ ~b~[Need 3]~s~') --xItem4 if else function
				end
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Vegetables!~s~ ~b~[Need 2]~s~') --xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Tortilla Wrap!~s~ ~b~[Need 2]~s~') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Processed Meat!~s~ ~b~[Need 3]~s~') --xItem1 if else function
	end 
end)

-- Coca Cola (NOT FINAL) not sure kung pano yung proseso ng sa coke ng Teagang boss d.
RegisterServerEvent('drinks:combination1') -- Drink combination function 1
AddEventHandler('drinks:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('water') -- Item 1
	local xItem2 = xPlayer.getInventoryItem('sugar_syrup') -- Item 2

		if xItem1.count > 1 then -- Item 1 count
			if xItem2.count > 1 then -- Item 2 count
					TriggerClientEvent('drinks:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('coca_cola', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 1)
					xPlayer.removeInventoryItem('sugar_syrup', 2) -- removing the Sugar Syrup  (Item 2)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Sugar Syrup!~s~ ~b~[Need 2]~s~')--xItem2 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Water!~s~ ~b~[Need 2]~s~')--xItem1 if else function
		end
end)

RegisterServerEvent('drinks:combination2') -- Drink combination function 1
AddEventHandler('drinks:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('water') -- Item 1
	local xItem2 = xPlayer.getInventoryItem('sugar_syrup') -- Item 2

		if xItem1.count > 1 then -- Item 1 count
			if xItem2.count > 4 then -- Item 2 count
					TriggerClientEvent('drinks:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('coca_cola', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 1)
					xPlayer.removeInventoryItem('sugar_syrup', 5) -- removing the Sugar Syrup  (Item 2)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Sugar Syrup!~s~ ~b~[Need 5]~s~')--xItem2 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough ~r~Water!~s~ ~b~[Need 2]~s~')--xItem1 if else function
		end
end)