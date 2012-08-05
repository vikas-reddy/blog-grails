package blog

class Comment {

    String body
    Date dateCreated
    Date lastUpdated

    static belongsTo = [post: Post]

    static mapping = {
        body type: 'text'
    }

    static constraints = {
        body nullable: false
    }
}
