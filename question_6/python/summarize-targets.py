# python -m pip install requests
import requests
import re
from collections import Counter

# url for fetching the log file
url = 'https://fpsrechallenge.blob.core.windows.net/sre/fp-sre-challenge.log'

# the regular expression for finding the target hosts
regex = r'\[([^\[]+)\]\s\[\]\s(\d+.\d+.\d+.\d+)'

# fetching the logfile
response = requests.get(url=url)

# finding all hosts by regex and saving them in an array
hosts = re.findall(regex, response.text, re.MULTILINE)

# Counting the occourenses of elements in the array and saving them in a dictionary
dict = Counter(hosts)

# a little help for the output
print("ipv4 - hostname (number of requests)")
print("------------------------------------")

# printing the hostname and number of requests for each host
for host, n_req in dict.items():
        print("{} - {} ({})".format(host[1], host[0], n_req))