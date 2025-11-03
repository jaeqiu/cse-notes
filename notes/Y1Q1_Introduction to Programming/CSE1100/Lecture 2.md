---
Week Number: "1.1"
Desciption: Methods
Cues: Parts of a Class, Method
Slides: https://brightspace.tudelft.nl/d2l/le/content/595284/viewContent/3236120/View
Slides 2: https://brightspace.tudelft.nl/d2l/le/content/595284/viewContent/3236131/View
Created: 2024-09-20T20:36
---
### classes

> Imagine a **class as a cookie cutte**r, and **objects as cookies**.  
> The class defines **how** the cookies (objects) will be made.
### methods
### constructor methods
methods that create an object of the class, asking for the parameters that should be propertiese of an object in the class
Code Cue: (try to understand what works)
```Java
class Book { //BLUEPRINT FOR BOOKS
    private String title; //PROPERTIES OF ANY BOOK
    private String author; //PROPERTIES OF ANY BOOK
    private long isbn; //PROPERTIES OF ANY BOOK
    //CREATE A METHOD FOR A "COMMAND" TO MAKE A BOOK OBJECT (INSTANCE)
    public Book(String title, String author, long isbn) {
        this.title = title; //IN OBJECT PROPERTY TITLE, STORE THE TITLE PARAMETER
        this.author = author; //IN OBJECT PROPERTY , STORE THE  PARAMETER
        this.isbn = isbn; //IN OBJECT PROPERTY STORE THE  PARAMETER
    }
    //GIVE THE TITLE PROPERY WHEN ASKED FOR IT
    public String getTitle() {
        return this.title;
    }
  //GIVE THE TITLE PROPERY WHEN ASKED FOR IT
    public String getAuthor() {
        return this.author;
    }
  //GIVE THE TITLE PROPERY WHEN ASKED FOR IT
    public long getISBN() {
        return this.isbn;
    }
}
```
### other methods (instance, static, get/set, finalize, static initializer)
```Java
protected ...
private ...
public ...
//after the visibility modifier, type "static" for all current intents and purposes:
//When you declare a method as static, 
//it means the method belongs to the class itself 
//rather than to instances of the class. 
		... static ...
//after the keyword, decide what variable should return:
						... int ...
						... bool ...
						... String ...
						... char ...
						... double ...
//cue drill => this is a test to see if you can understand a working example:
public static int incrementGiven(int given){
	return given++;
}

//void is used when a function doesn't return anything => it can still be of use tho:
public static void printTwelveTimes(String singleString){
	for (int i = 0; i<12; i++){
		print(singleString);
	}
}
```