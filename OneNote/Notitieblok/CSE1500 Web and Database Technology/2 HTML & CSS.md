> [!caution] This page contained a drawing which was not converted.   

HTML = Hyper-Text Markup Language
 
Hyper-text:￼Text on computer screens with references (hyper-links)
 
Markup Language:

- text and coding system
- controls structure and formatting
- HTML Tags
 
<meta> tag

- information about data
- always in <head> element
- author name, keywords, charset, viewport, etc.

![Exported image](Exported%20image%2020241209225305-0.png)  

Header tags

<h1> most important  
<h6> least important

- used by search engines
 
<em>

- words with **stressed** emphasis compared to surrounding text. used for accessibility

<i>

- indicates technical term, phrase from another language, thought, etc.
 
<strong>

- strong importance. urgency, seriousness
- warnings

<b>

- draw attention, without indicating that it's more important
   

////////////
 
Anatomy of HTML tags:
 
Start tag End tag
 
<h2>Text example</h2>
 
Self-closing tag
 
<br>

- break line
 
attribute
 
<hr size = 3>

- horizontal rule
 
(link: devdocs.io/html)
   

////////////
 
Nested List
 ![Exported image](Exported%20image%2020241209225305-1.png)  

<ul> = unordered list  
<ol> = ordered list
 
Other attributes

- type
    
    - type = "a"
        
        - a, b, c ...
    - type = "i"
        
        - i, ii, iii ...
- start
    
    - starting from x
- reversed
    
    - reverses list
   

//////////
 
<img>

![Exported image](Exported%20image%2020241209225306-2.png)  

src = source of image  
alt = alt text (accessability)  
width = width of image
 
width and no height (or vice versa)?  
Image aspect ratio will be kept, but it's recommended to specify both (for loading speed and memory purposes?)
   

//////////
 
Anchor tag <a>

- defines hyperlink
- href="..." specifies destination
 
Some target attributes:  
_blank

- opens linked codument in new window/tab

_self  
_parent  
_top  
_framename_
   

/////////
 ![Exported image](Exported%20image%2020241209225306-3.png)   
//////////
 
A block-level element always starts on a new line and takes up the full width available (stretches out to the left and right as far as it can).
 
Examples of block-level elements:
 
<div> - The <div> tag defines a division or a section in an HTML document.  
<h1> - <h6>  
<p>  
<form>  
<header>  
<footer>  
<section>
   

An inline element does not start on a new line and only takes up as much width as necessary.
 
Examples of inline elements:
 
<span> <a> <img>
   

///////////
 
visibility: hidden;  
display: none;
 
Visibility doesn't change lay-out. Display changes lay-our
   

///////////
 
Position

|   |   |
|---|---|
|static|HTML elements are positioned static by default.|
|relative|An element with position: relative; is positioned relative to its normal position.|
|fixed|An element with position: fixed; is positioned relative to the viewport, which means it always stays in the same place even if the page is scrolled.|
|absolute|An element with position: absolute; is positioned relative to the nearest positioned ancestor|
|sticky|An element with position: sticky; is positioned based on the user's scroll position.|
    
More HTML tags:  
w3schools.com/tags/default.asp