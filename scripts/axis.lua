scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "axis"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	return true
end

function onUnlock()
	 myo.debug(myo.getRoll())
	 myo.debug(myo.getPitch())
	 myo.debug(myo.getYaw())
end
