package blog

class Post {

    String title
    String body
    Date dateCreated
    Date lastUpdated

    static hasMany = [comments: Comment]
    static mapping = {
        body type: 'text'
    }

    static constraints = {
        title nullable: false
        body nullable: false
    }
}
