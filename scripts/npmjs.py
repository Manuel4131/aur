import json
import requests
import sys

package_name = sys.argv[1]

r = requests.get('http://registry.npmjs.org/%s/latest' % package_name)
data = json.loads(r.text)
print(data['version'])
