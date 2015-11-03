import Cocoa
/*:

# Building Word Probabilities From a File

The next step will be to move beyond generated random *strings* of individual *characters* and instead generate random sentences based on individual word probabilities.

To do this, you will need to locate a text source that you would like to build your "Markov Bot" from.

Once you locate your file, here is how to add it to the Playground you are using.

Make the lefthand file Navigator visible:

![leftnav](leftnav.png "Show the file Navigator")

Then drag the source text into the Resources folder, like this:

![draganddrop](draganddrop.png "Drag a file to the resources folder")

Review following steps carefully.

Change the code so that the program loads the text file you have found.

*/

// Set location of file
// File obtained from:
// http://www.presidentialrhetoric.com/campaign/speeches/bush_oct19.html
// Only edits:
// - Removed "AUDIENCE: ..." lines.
// – Removed "THE PRESIDENT:"

// Set the location of the file
let fileURL = NSBundle.mainBundle().URLForResource("bush-speech", withExtension: "txt")

// Get the contents of the file, and place in a String.
// Note that this loads entire file into memory.
// Not efficient for very large files.
let content = try String(contentsOfURL: fileURL!, encoding:
    NSUTF8StringEncoding)

// Review the result
content

// Set the delimiters we will use to break up the string
let delimiters = NSCharacterSet(charactersInString: ", \n")

// Break the string up into an array using delimiters created above
let words = content.componentsSeparatedByCharactersInSet(delimiters)
words
// Review the contents of the array
words.sort()
/*:

Now you have the entire contents of your text file, separated into individual words, and stored in a regular array.

Your goal is to write an algorithm to determine:

* how often each word occurs in the source text, as a raw count
* how often each word occurs in the source text, as a probability

All of this information should be retained.

In your sketchbook, write out an algorithm that will accomplish this task.

Remember to include the following sections:

* Summary
* Ideas
* Algorithm
* Assumptions

Once you have written out your algorithm, see me, Mr. Gordon, to review your work.

Then, implement your algorithm below.

*/

// Implement your ideas below

/*: 

Next, use the data structures you have built to write a sequence of code that generates a random sentence, but based on the relative probabilities of the words in your source text.

Your program should not build a sentence with a pre-determined number of words – but should instead simply end when a word that includes a period after it is selected.

*/

// Implement your ideas below
