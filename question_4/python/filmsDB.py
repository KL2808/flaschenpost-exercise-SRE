# python -m pip install requests
import requests

# base url for fetching movies
base_url = 'https://jsonmock.hackerrank.com/api/movies/search'

def getMovieTitles(substr):
    # declaring a function scoped var for all titels rerurned by the request
    titels = []
    # defining request parameters
    params = dict(
        Title = substr,
        page = 1
    )

    # save json encoded result of get request on base-url with params parameters
    response = requests.get(url=base_url,params=params).json()

    # iterating through total_pages (numeber of pages)
    for i in range(response['total_pages']):
        # modifying page paramerter to iterator
        params['page'] = i;
        # save json encoded result of get request on base-url with params parameters 
        response = requests.get(url=base_url,params=params).json()
        # iterating through evrey object in data array of response
        for film in response['data']:
            # "adding" the title to the titels array
            titels.append(film['Title'])

    # sorting the titels by ascending order
    titels.sort()
    return titels

# printing the movieTitels responding to th entered searchterm
substr = input("Enter a searchterm: ")
print(getMovieTitles(substr))