on run {input, parameters}
  -- Get the path of the file selected in finder
	tell application "Finder"
		set parentpath to POSIX path of input
	end tell
	-- Tell terminal to open up and cast the selected file to chromecast!
	tell application "Terminal"
		activate
		do script "castnow " & parentpath
	end tell
	return input
end run
