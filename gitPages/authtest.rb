require "octokit"


client = Octokit::Client.new(:access_token => "cd74f838d39f1e8b0cd107698b721ed4ad677744")
client.create_authorization(:scopes => ["public_repo"], :note => "Token is for creating repos")
user = client.user
puts user.login

client.create_repository("octokitPost", {description: "New repo from octokit"})

# puts User.all? { |e|  }