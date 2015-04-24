<!DOCTYPE html>
<html>
 <head>
 <meta name="layout" content="main"/>
 <title>Universal Library Administration System</title>
 </head>

<body>
 <div id="welcome">
 <br />
 <h3>Welcome to Universal Library Administration System</h3>
 <br>
 <p style="display: inline-block; width: 70%;"> 
Lorem ipsum dolor sit amet, ornatus conceptam ius te. 
Iudico nominavi philosophia ea pri, graecis evertitur nec an. 
At saepe repudiare pri, qui eu consul rationibus appellantur. 
His eruditi senserit eu.</p>
 </div>



<div class="homeCell">
 <h3>Manage Libraries</h3>
 <p>Library Records</p>
 <span class="buttons" >
 <g:link controller="Library" action="index">View Libraries</g:link>
 </span>
<span class="buttons" >
 <g:link controller="Library" action="create">Add New Library</g:link>
 </span>
 </div>



<div class="homeCell">
 <h3>Manage Librarians</h3>
 <p>Librarian Records</p>
<span class="buttons" >
 <g:link controller="Librarian" action="index">View Librarians</g:link>
 </span>
 <span class="buttons" >
 <g:link controller="Librarian" action="create"> Add New Librarian</g:link>
 </span>
 </div>


<div class="homeCell">
 <h3>Manage Books</h3>
 <p>Book Records</p>
<span class="buttons" >
 <g:link controller="Book" action="index">View Books</g:link>
 </span>
 <span class="buttons" >
 <g:link controller="Book" action="create"> Add New Book</g:link>
 </span>
 </div>



<div class="homeCell">
 <h3>Manage Courses</h3>
 <p>Course Records</p>
<span class="buttons" >
 <g:link controller="Course" action="index">View Courses</g:link>
 </span>
 <span class="buttons" >
 <g:link controller="Course" action="create"> Add New Course</g:link>
 </span>
 </div>



<div class="homeCell">
 <h3>Manage Students</h3>
 <p>Student Records</p>
<span class="buttons" >
 <g:link controller="Student" action="index">View Students</g:link>
 </span>
 <span class="buttons" >
 <g:link controller="Student" action="create"> Add New Student</g:link>
 </span>
 </div>



 </body>
</html>





