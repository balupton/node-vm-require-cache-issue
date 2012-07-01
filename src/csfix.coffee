# Log
console.log """
	=== node vm require cache issue (with csfix) ===
	"""

# Requires
coffee = require('coffee-script')
fsUtil = require('fs')
vm = require('vm')

# Prepare
dataFile = __dirname+'/../data.cson'

# Read in the file and get its results via coffee-script
dataString = fsUtil.readFileSync(dataFile).toString()
data = coffee.eval(dataString,{sandbox:true})
console.log('first pass:', data)

# Now lets do that again, to demonstrate the problem (as now coffee-script would have been over-written)
dataString = fsUtil.readFileSync(dataFile).toString()
data = coffee.eval(dataString,{sandbox:true})
console.log('second pass:', data)

# Log
console.log('\n')