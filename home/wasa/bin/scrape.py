#!/usr/bin/env python
import lxml.html
import requests

url = 'https://www.facebook.com/DiefetteKuh'
doc = lxml.html.document_fromstring(requests.get(url).content)

# for some very weird reasons open gives us the interesting content in
# comments which have to be parsed again it seems
comments = [lxml.html.document_fromstring(element.text)
            for element in doc.iter()
            if element.text and 'BURGER' in element.text]

print(comments[0].cssselect('div[role=article] .userContent')[0].text_content())
print(comments[0].cssselect('div[role=article] .scaledImage img')[0].get('src'))
