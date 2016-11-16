class Blog

  # CREATE AN EMPTY ARRY TO SAVE THE POSTS
  @@all_blog_posts = []
  # SET THE BASELINE VALUE FOR THE CLASS VARIABLE
  @@total_posts = 0

  # CREATE A CLASS METHOD
  def self.all
    @@all_blog_posts
  end

  def self.add(thing)
    @@all_blog_posts << thing
    @@total_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Post Title:\n #{post.title}"
      puts "Content:\n #{post.content}"
      puts "Publish Date:\n #{post.pub_date}"
      puts "Written By:\n #{post.author}"
      puts ""
    end
  end
end


class BlogPost < Blog

    def self.create
        new_post = new

        puts "What is the title of your post?"
        new_post.title = gets.chomp.capitalize
        post_title = new_post.title

        puts "What is your post content?"
        new_post.content = gets.chomp
        post_content = new_post.content

        new_post.pub_date = Time.now
        post_date = new_post.pub_date

        puts "Who is the author?"
        new_post.author = gets.chomp.upcase
        post_author = new_post.author

        new_post.save

        puts "Do you want to create another blog post? [Y/N]"
        answer = gets.chomp.downcase

        create if answer == 'y'

    end

    attr_accessor :title, :content, :pub_date, :author

    def save
      BlogPost.add(self)
    end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
