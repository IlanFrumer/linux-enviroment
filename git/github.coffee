# https = require('https')

# readline = require('readline');

# githubUsername = (username)->

#   options =
#     host : 'api.github.com'
#     port : 443
#     path : "/users/#{username}"
#     headers:
#       'user-agent': 'Node.js'
#     method : 'GET'

#   reqGet = https.request options, (res)->
#     res.on 'data', (body)->
      
#       user = JSON.parse(body)

#       details = 
#         login : user.login
#         email : user.email
#         name  : user.name

#       console.log user

#   reqGet.end()
#   reqGet.on 'error', (e)->
#     console.error(e)  

# prompt = (text , callback)->
#   rl = readline.createInterface
#     input: process.stdin
#     output: process.stdout

#   rl.question text, (answer)->
#     callback(answer)
#     rl.close()

# prompt "Enter your github username and press [ENTER]: " , (username)->
#   githubUsername(username)

