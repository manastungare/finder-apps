(*
TextMate Launch Script by Manas Tungare, http://manas.tungare.name/
Dedicated to the Public Domain.
Copyright for the TextMate icon belongs to MacroMates, Inc.
*)

tell application "Finder"
	set thisFolder to (target of front window) as Unicode text
	set posixPath to quoted form of POSIX path of thisFolder
	do shell script "/Applications/TextMate.app/Contents/Resources/mate " & posixPath
end tell