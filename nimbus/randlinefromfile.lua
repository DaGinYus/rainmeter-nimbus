function getlines(filename)
	local lines = {}
    -- io.lines returns an iterator, so we need to manually unpack it into an array
    for line in io.lines(filename) do
        lines[#lines+1] = line
    end
    return lines
end

function Initialize()
	infile = SELF:GetOption("FileName")
	print(infile)
end

function Update()
	local lines = getlines(infile)
	numlines = #lines
	local linenumber = math.random(numlines)
	return lines[linenumber]
end