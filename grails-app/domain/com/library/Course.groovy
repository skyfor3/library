package com.library

class Course {

String title
String code
String tutor
String department
String description

static hasMany=[students:Student]

String toString(){
"$title, $department"
}

    static constraints = {

title()
code()
tutor()
department()
description maxSize:100
    }
}
