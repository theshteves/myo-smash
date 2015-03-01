scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "axis"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")
a = myo.getRoll(0)
function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	return true
end

function onUnlock()
	 myo.debug("Roll: " .. myo.getRoll()- a)
	 --myo.debug("Pitch: " .. myo.getPitch())
	 --myo.debug("Yaw: " .. myo.getYaw())
end
