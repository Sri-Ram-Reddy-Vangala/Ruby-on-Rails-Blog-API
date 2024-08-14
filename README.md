Project Setup
# Install Rails if you haven't already
gem install rails

# Create a new Rails API-only application
rails new blog_api --api --database=postgresql

# Change directory to the new app
cd blog_api

# Initialize a Git repository
git init
git add .
git commit -m "Initial commit"

# Create a GitHub repository and push the code
git remote add origin <your-github-repo-url>
git push -u origin master

