You have your very own library at home, and it's getting bigger and bigger with each passing month. You've decided to create a database in which to store information about your books, in the hope that it will help you remember which books you have in your library.

Information about the books in your library is stored in the table __catalogs__, which contains the following columns:

* doc_id - the unique ID of the catalog;
* xml_doc - the catalog as an XML file in the following format:

&#60;catalog&#62;    
&nbsp;&nbsp;&#60;book id="..."&#62;    
&nbsp;&nbsp;&nbsp;&nbsp;&#60;author&#62;...&#60;/author&#62;    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#60;title&#62;...&#60;/title&#62;    
&nbsp;&nbsp;&#60;/book&#62;    
  
&nbsp;&nbsp;&#60;book id="..."&#62;  
&nbsp;&nbsp;&nbsp;&nbsp;&#60;author&#62;...&#60;/author&#62;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#60;title&#62;...&#60;/title&#62;  
&nbsp;&nbsp;&#60;/book&#62;  
&nbsp;&nbsp;...  
&#60;/catalog&#60;.  

Each catalog represents the work of one distinct <author> in your library. There is exactly one <catalog> element in each xml_doc, and the id for each book is unique.

Given the __catalogs__ table, you want to find out which authors you have represented in your library. Your task is to create a new table with the author column that will contain all the distinct authors, sorted by their names.

__Example__

For given table __catalogs__

|doc_id|	xml_doc|
|---|---|
|1	| &#60;catalog&#62; <br /> &#60;book id="11"&#62; <br /> &#60;author&#62;Chuck Palahniuk&#60;/author&#62; <br /> &#60;title>Fight Club&#60;/title&#62; <br /> &#60;/book&#62; <br /> &#60;book id="12"&#62; <br /> &#60;author&#62;Chuck Palahniuk&#60;/author&#62; <br /> &#60;title&#62;Survivor&#60;/title&#62; <br /> &#60;/book&#62; <br /> &#60;/catalog&#62;|
|2	| &#60;catalog&#62; <br /> &#60;book id="21"&#62; <br /> &#60;author>Bernard Werber&#60;/author&#62; <br /> &#60;title>Les Thanatonautes&#60;/title&#62; <br /> &#60;/book&#62; <br /> &#60;/catalog&#62;|
|3	|&#60;catalog&#62; <br /> &#60;book id="31"&#62; <br /> &#60;author&#62;Boris Vian&#60;/author&#62; <br /> &#60;title&#62;The Big Sleep&#60;/title&#62; <br /> &#60;/book&#62;&#60;book id="32"&#62;<br /> &#60;author&#62;Boris Vian&#60;/author&#62;<br /> &#60;title&#62;The Lady in the Lake&#60;/title&#62; <br /> &#60;book>&#60;book id="33"&#62; <br /> &#60;author>Boris Vian&#60;/author&#62; <br /> &#60;title&#62;The World of Null-A&#60;/title&#62; <br /> &#60;/book&#62; <br /> &#60;/catalog&#62;|

the output should be

|author|
|---|
|Bernard Werber|
|Boris Vian|
|Chuck Palahniuk|

[time limit] 10000ms (mysql)
