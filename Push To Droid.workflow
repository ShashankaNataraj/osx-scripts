on run {input, parameters}
	tell application "Finder"
		set parentpath to POSIX path of input
	end tell
	tell application "Terminal"
		activate
		do script "adb push '" & parentpath & "' /storage/emulated/0"
		quit
	end tell
	return input
end run
