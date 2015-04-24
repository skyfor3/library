package com.library

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Course)
class CourseSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test test toString"() {
when: "A Course has title, code and department"

def course=new Course(title:'WEB SYSTEMS DESIGN',code:'WSD101', department:'Computing')

then: "the to String method will merge them."

course.toString()=='Web Systems Design,WSD101, Computing'
    }
}
