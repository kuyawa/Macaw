![Macaw](https://raw.githubusercontent.com/kuyawa/Macaw/master/Macaw/macaw.png)

# MACAW - Syntax Highlighter in Swift

**Macaw** is the simplest syntax highlighter you can find in Swift. 

I was looking for a simple syntax highlighter and found SourceKit, SourceKitten and SourceKittenDaemon plus an outdated OysterKit, but they were too complex for my need so I decided to make one. I love one file libraries because they're easier to copy and implement in your pet projects without downloading a gigabyte of dependencies.

So here is **Macaw Syntax Highlighter**, not the best of the pack but it works and that's more than enough for me.

Why Macaw? Because Macaws are beautiful and colorful parrots, that's why.

Ok, here is how to use it, just create a **Macaw** instance passing the textView that will be colorized, then on text change call `macaw.colorize(range)` and that's it, the latest range of characters that was edited will be colorized. Simpler impossible, that's why I love it.

Take a look at the ViewController for an in-depth review of the code.

