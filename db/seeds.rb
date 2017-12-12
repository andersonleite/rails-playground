Header.create(title: 'Angular on Rails')
User.create(email: 'user@example.com', nickname: 'UOne', name: 'Author One', password: "monkey67")


luke = Author.create(name: 'Luke')
leia = Author.create(name: 'Leia')
han = Author.create(name: 'Han')
vader = Author.create(name: 'Darth Vader')
boba = Author.create(name: 'Boba Fett')
jabba = Author.create(name: 'Jabba')

post1 = Post.create(content: 'First post', author: luke)
post2 = Post.create(content: 'Second post', author: vader)

Comment.create(content: 'First comment', author: leia, post: post1)
Comment.create(content: 'Second comment', author: han, post: post1)

Comment.create(content: 'Third comment', author: boba, post: post2)
Comment.create(content: 'Fourth comment', author: jabba, post: post2)
