# python -m pip install requests
import requests
import re
from collections import Counter

# url for fetching the log file
url = 'https://fpsrechallenge.blob.core.windows.net/sre/fp-sre-challenge.log'

# the regular expression matching all requesters "in the first column" / at the beging of a line
regex = r'^[0-9]+(?:\.[0-9]+){3}'

# fetching the logfile
response = requests.get(url=url)

# finding all hosts by regex and saving them in an array
hosts = re.findall(regex, response.text, re.MULTILINE)

# Counting the occourenses of elements in the array and saving them in a dictionary
dict = Counter(hosts)

# a little help for the output
print("host (number of requests)")
print("-------------------------")

# printing the hostname and number of requests for each host
for host, n_req in dict.items():
        print("{} ({})".format(host, n_req))