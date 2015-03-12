import requests
import json
import sys

github_addr = sys.argv[1]
pkgbuild_ver = sys.argv[2]

parts = github_addr.split('#')
branch = None
if len(parts) > 1:
    if parts[1].startswith('branch#'):
        branch = parts[1][len('branch#'):]
url = 'https://api.github.com/repos/%s/commits' % parts[0]
if branch:
    url += '?sha=' + branch
r = requests.get(url)
data = json.loads(r.text)
print(data[0]['commit']['author']['date'])
