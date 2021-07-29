function StringCase(inArg, outCase)

	if string.lower(outCase) == 'lower' then
		return string.lower(inArg)
	end

	if string.lower(outCase) == 'upper' then
		return string.upper(inArg)
	end
	
	if string.lower(outCase) == 'sentence' then
		return (inArg:gsub('[^.!?]+', function(sentence)
				local space, first, rest = sentence:match('(%s*)(.)(.*)')
				return space .. first:upper() .. rest:lower():gsub("%si([%s'])", ' I%1')
		end))
	end

	if string.lower(outCase) == 'proper' then		
		return (inArg:gsub('(%S)(%S*)', function(first, rest) return first:upper() .. rest:lower() end))
	end
	
end