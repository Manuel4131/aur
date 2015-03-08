import json
import requests
import sys

package_name = sys.argv[1]

r = requests.get('https://pypi.python.org/pypi/%s/json' % package_name)
data = json.loads(r.text)
print(data['info']['version'])
