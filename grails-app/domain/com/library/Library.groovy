package com.library

class Library {

String name
String location
String openingHours

static hasMany=[librarians:Librarian,books:Book,students:Student]

String toString(){name}


    static constraints = {

name()
location()
openingHours()



    }
}
