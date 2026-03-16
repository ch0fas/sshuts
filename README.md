# SSHUTS
This is a compilation of the scripts I create. Read more about them below. Most are written in pure Shell but others were made using Go.

### ✔️ Quick-C
Quick-C is a tool for people learning C to more quickly compile and run their C programs. 

**USAGE**
```
quick_c foo.c <args>
```
For now, it always creates a binary with the same name as the original .c file. Running the command both creates and executes the binary produced by the compiler. If there are any compilation errors, it will show them in full. <br>
To fix: old binaries are executed even if the new compilation gives an error.
### 🎲 Arengee
Arengee is a (ridiculously) simple random number generator, with inclusive lower and upper bounds.

**USAGE**
```
arengee <lower_bound> <upper_bound>
```

### 🔮 pword_maker
pword_maker is a bulk password generator, written in Go

**USAGE**
```
pword_maker -l=10 -char -nums -am=10 -o=foo.txt
```
* -l: The length of the generated passwords (defualt: 10)
* -char: Whether the passwords can use special characters (false by default, just using -char makes it true)
* -nums: Whether the passwords can use numbers (false by default, just using -nums makes it true)
* -am: The amount of passwords to generate (default: 10)
* -o: The file to output the generated text (default: foo.txt)



# Future scripts
- RWALLPAPER (temp title): A shell script for hyprpaper that changes the wallpaper randomly to an image in a specific directory, with the option for multiple themed directories, and for the change to be just temporary or made permanent
