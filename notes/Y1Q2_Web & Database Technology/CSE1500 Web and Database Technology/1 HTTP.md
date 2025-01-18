> [!caution] This page contained a drawing which was not converted.   

Client <-> Proxy <-> Proxy <-> Proxy <-> Server
 
DNS Server translates domain to IP
 
Dynamic pages:  
Data + Template -> Template Engine -> HTML document
 
Single-page applications:

- re-render page (DOM) in browser
 
MIME = Multipurpose Internet Mail Extensions
 
http://  
Scheme

- how
 
www. link .com  
Host

- where
 
/sub/path.html  
Path

- what
 
http:// [www.example.com](http://www.example.com) :80 /path/to/myfile.html ?key1=value #SomewhereInDoc
 
Protocol  
Host  
Port  
Path to file  
Parameters Anchor
 
Escape sequences:

- % with two hexadecimal digits
- represent unsafe characters in URLs
 
HTTP message three parts:

- Start line
- Headers
- Body
   

/////////
 
HTTP = Hypertext Transfer Protocol

- web browsers, servers, web applications talk to each other through HTTP
- reliable data-transmission protocols
    
    - guarantees data will not be damaged
 
Web content live on web servers, called **HTTP servers**.  
**HTTP servers** store and provide Internet's data when requested by **HTTP clients**.  
**HTTP Clients** send **HTTP requests** to servers.  
Servers return the requested data in **HTTP responses**.  
HTTP clients and servers make up the basic components of the World Wide Web.
   

/////////
 
Resources

- hosted by Web Servers
- Simplest kind: static file
    
    - can contain anything: text file, html files, jpeg, etc.
- resources can also be software programs, dynamic content
 
Media Types

- HTTP tags each object with a data format label, called a MIME type
    
    - MIME = Multipurpose Internet Mail Extensions
- textual label, represented as a primary object type and a specific subtype, seperated by a slash
    
    - HTML = text/html
    - ASCII text doc = text/plain
    - JPEG = image/jpeg
 
URIs

- Each web server resource has a name, uniform resource identifier (URI)
    
    - like postal addresses of the Internet
- URLs, URNs

URLs

- Uniform Resource Locator (URL) most common form of resource identifier
- tells exactly how to fetch resource from precise, fixed location
- Almost every URI is a URL

![Exported image](../../../attachments/Exported%20image%2020241209225252-0.png)  

URL composition:

- Scheme
    
    - describes protocol used
    - http://
- Server Internet Address
    
    - www. joes-hardware.com
- The rest
    
    - names a resource on the webserver
    - /special/saw-blade.gif
 
URNs

- unique name for piece of content, independent of where the resource resides
- allows resources to move from place to place
- allows access by multiple network access protocols, with same name
- eg: urn:ietf:rfc:2141
    
    - Name: RFC 2141
   

////////
 
HTTP Transactions

- consists of
    
    - request command (from client to server)
    - response result (sent from server back to client)
- formatted blocks of data, HTTP messages

![Exported image](../../../attachments/Exported%20image%2020241209225253-1.png)  

HTTP Methods

- tells server what action to perform
    
    - fetch a web page, delete file, etc.

|   |   |
|---|---|
|GET|Send named resource from server to client|
|PUT|Store data from client to named server resource|
|DELETE|Delete named resource from server|
|POST|Send client data into server gateway application|
|HEAD|Send just the HTTP headers from the resource for the named resource|
|TRACE|Trace the message through proxy servers to server|
|OPTIONS|Determine what methods can operate on server|
 
Web Pages can consist of multiple objects

- an application often issues multiple HTTP transactions to accomplish task
    
    - web browser issues cascade of Transactions to fetch and display page
        
        - HTML skeleton
        - for each image, graphics pane, Java applet, etc.
   

////////
 
Status Codes

- Every HTTP response comes back with a status code
- 3-digit numeric code
- tells client if request succeeded, or if actions are required
- HTTP also sends explanatory "reason phrase" with status code
 
|
|
==Category== ==Overall Range== ==Defined Range== ==Examples====  
==
==Informational==1xx|100-101|**101**|Switching protocols|
==Successful==2xx|200-206|**200**|OK. Request has succeeded|
==  
==||**206**|Partial Content. Used when range header  <br>is sent to request only part of resource|
==Redirection==3xx|300-305|**301**|Moved Permanently|
==  
==||**304**|Not modified|
==Client Error==4xx|400-415|**404**|Not found|
==  
==||**403**|Forbidden|
==  
==||**401**|Unauthorized|
==Server Error==5xx|500-505|**500**|Internal Server Error|
==  
==||**504**|Gateway Timeout|
   

///////
 
HTTP Messages

- simple, line-oriented sequences of characters. plain text
![Exported image](../../../attachments/Exported%20image%2020241209225253-2.png)
 
HTTP Messages Composition:  
Start line

- first line
- what to do for a request
- what happened for a response
    
    - contains status code

Header fields

- 0 or more
- name and value, seperated by :
- ends with blank line

Body

- optional message body
- may contain any sort of data
- arbitrary binary data (images, videos), text, etc.
 ![Exported image](../../../attachments/Exported%20image%2020241209225254-3.png)  

HTTP/1.0 = HTTP version number  
/tools.html = local resource  
no body = no request data is needed to GET a simple doc from server  
'Content-type text/html' = MIME type
  /////////
 
TCP/IP Connections

- how messages move from place to place
- TCP = Transmission Control Protocol
- HTTP leaves networking to TCP/IP
- Internet itself based on TCP/IP
- HTTP protocol is _layered_ over TCP: HTTP uses TCP to transport it's message data
    
    - Likewise, TCP is layered over IP
 
TCP provides

- error-free data transportation
- in-order delivery
- unsegmented data stream (can dribble out data in any size any time)
 ![Exported image](../../../attachments/Exported%20image%2020241209225257-4.png)  

IP Addresses & Port Numbers

- Before HTTP client can send message, TCP/IP connection needs to be established between client and server
    
    - using Internet Protocol (IP) addresses and port numbers
- IP Address = address of server computer
- TCP Port number = specific software program running on the server
- URL gives IP address and port number
 
|   |   |
|---|---|
|http:// 207.200.83.29:80/index.html|IP address and port number "80"|
|http:// www .netscape.com:80/index.html|No IP address, textual domain name or _hostname_|
|http:// www .netscape.com/index.html|No port number. Assumes default port nr 80|
 
Hostname

- human-friendly alias for IP address
- converted to IP address through Domain Name Service (DNS)
 
How does a browser use HTTP to display a simple HTML resource?

1. The browser extracts the server’s hostname from the URL.
2. The browser converts the server’s hostname into the server’s IP address.
3. The browser extracts the port number (if any) from the URL.
4. The browser establishes a TCP connection with the web server.
5. The browser sends an HTTP request message to the server.
6. The server sends an HTTP response back to the browser.
7. The connection is closed, and the browser displays the document.
   

////////
 
Telnet

- connects keyboard to destination TCP port, connects output back to display screen
- can talk directly to HTTP web servers - Look up IP address of website and open TCP connection port 80
- Type in HTTP request
- Server sends back content in HTTP response and closes connection
 ![Exported image](../../../attachments/Exported%20image%2020241209225258-5.png)   
////////
 
HTTP Protocol Versions

|   |   |
|---|---|
|0.9|Protoype version|
|1.0|First widely deployed version|
|1.0+|Informal extended version|
|1.1|Corrects architectural flaws. Current version|
|NG (a.k.a. 2.0)|prototype of architectural successor of 1.1|
   

///////
 
Proxies

- HTTP intermediaries
- sit between client and servers
- security: filters requests and responses
 
Caches / Web Cache / Caching Proxy

- keeps copies of popular documents passing through proxy
- next client requesting same document can be served from cache's personal copy
 
Gateways

- intermediaries for other servers
- convert HTTP traffic to another protocol
 
Tunnels

- blindly relays raw data between two connections
- used to transport non-HTTP data over one or more connections
- doesn't look at data
- carries Secure Sockets Layer (SSL) traffic (encrypted)
 
(User) Agents

- client programs that make HTTP requests on user's behalf
- web browsers
- "spiders", "web robots"
    
    - wander the Web to build useful archives of web content
   

////////
 
Curl

- like Telnet
- host name, number, initial connection not needed
- can use direct url instead, curl will handle the rest
 
"curl -I dexter.kplabs.in/partial.txt"

![Exported image](../../../attachments/Exported%20image%2020241209225258-6.png)  

Accept-Ranges: able to be manipulated, for 'partial GET requests'
 ![Exported image](../../../attachments/Exported%20image%2020241209225259-7.png)  

GET /partial.txt HTTP/1.1  
Host: dexter.kplabs.in  
User-Agent: curl/7.64.1  
Accept: */*  
Range: bytes=0-20
   

HTTP conditional GET requests

- result can be changed by comparing affected resources with value of a validator
- validates content of cache
- verify integrity of document
 
In curl:

![Exported image](../../../attachments/Exported%20image%2020241209225259-8.png)

(otherwise, browser will grab cached page?)
 
Returns "304 Not Modified"

![Exported image](../../../attachments/Exported%20image%2020241209225300-9.png)   
POST request

- Send input data to server
 
HEAD method

- only fetches the HTTP headers as part of response
- identical to GET method
    
    - except that server must not return message body in the response
- We use "-I" in curl to only get header information
 
OPTIONS request

- requests permitted communication options

![Exported image](../../../attachments/Exported%20image%2020241209225300-10.png)

May return 405 Not Allowed