if Config.UseMoney then
	RegisterServerEvent('fuel:pay')
	AddEventHandler('fuel:pay', function(price)
		local src = source
		local xPlayer = exports.money:getaccount(src)
		local fix =  xPlayer.bank - tonumber(price)
		print(price, fix)
		if tonumber(price) > 0 then
			exports.money:updateaccount(src, {cash = xPlayer.amount, bank = xPlayer.bank - fix})
		end
	end)
end
