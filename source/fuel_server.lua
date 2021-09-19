if Config.UseMoney then
	RegisterServerEvent('fuel:pay')
	AddEventHandler('fuel:pay', function(price)
		local src = source
		local xPlayer = exports.money:getaccount(src)

		if price > 0 then
			exports.money:updateaccount(src, {cash = xPlayer.amount, bank = xPlayer.bank - price})
		end
	end)
end
