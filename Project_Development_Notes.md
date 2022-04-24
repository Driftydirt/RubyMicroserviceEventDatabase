# Cheat sheet
# H1
## H2
### H3
**bold text**
*italicized text*
> blockquote

1. First item
`code`
---p
[title](https://www.example.com)

## Code Notes
When in Docker, prepend all commands with the following
`docker-compose run web`

To create a new REST api rails app
`rails new Shelter_API --api --database=postgresql`

To create a shelter scaffold
`rails generate scaffold Shelter name:string description:text email:string phone_number:string address_id:integer`

To check bundle version
`bundle version`

To test the shelters database on postman as json
`{'name': 'Shelter1', 'description': 'This is Shelter1', 'email': 'shelter1@mail.com', 'phone_number': '0123456789' 'address_id':1}`

Delete scaffold `rails destroy scaffold Shelter`

Login to postgresql as postgres `psql -U postgres`

Install gem by putting the following in Gemfile `gem 'jwt'`

Curl command to get request `curl http://localhost:3000/shelters`

Curl command to POST request (USE POSTMAN) `curl --header "Content-Type: application/json" --request POST --data '{'name': 'Shelter1', 'description': 'This is Shelter1', 'email': 'shelter1@mail.com', 'phone_number': '0123456789' 'address_id':1} http://localhost:3000/shelters -v`

## Reference
- [What Is JWT](https://www.youtube.com/watch?v=7Q17ubqLfaM&ab_channel=WebDevSimplifiex)
- [RAILS 6 & 7 API Authentication with JWT](https://www.bluebash.co/blog/rails-6-7-api-authentication-with-jwt/)
- [Securing a Ruby on Rails API with JWTs](https://fusionauth.io/blog/2020/06/11/building-protected-api-with-rails-and-jwt)
- [Docker Rails Quickstart](https://docs.docker.com/samples/rails/)
- [Rails API and Postgres start](https://www.youtube.com/watch?v=n9V_1X8uGZM&ab_channel=AlexMerced-FullStackDeveloper)
- [Github for working JWT](https://github.com/FusionAuth/fusionauth-example-rails-api/tree/master/test)
- [Help with Rails API playlist](fusionauth.io/blog/2020/06/11/building-protected-api-with-rails-and-jwt)
- [Similar JWT Rails Project](https://github.com/thecatcampaign/Tinder-Backend/tree/master/src)
- [Docker Rails Guide](https://betterprogramming.pub/rails-6-development-with-docker-55437314a1ad)
- [How to load secret env variables](https://www.youtube.com/watch?v=mZ_gverN4Co&ab_channel=RailscastsReloaded)

## Additional Notes
- Postgres master password: pgAdmin
- posgresql password: MyPassword


## Git Notes
- `git init`
- `git pull https://github.com/NinthAutumn/com3014CW2Group2.git`
- `git checkout -b <branch_name>`
- `git add .`
- `git commit -m "Made changes to this and that"`
- `git remote add origin git@github.com:NinthAutumn/com3014CW2Group2.git`
- `git push -u origin <branch_name>`

