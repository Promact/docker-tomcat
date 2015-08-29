from lxml import etree
import os
import sys
print sys.argv[1]
tree = etree.parse(sys.argv[1])
hostname = os.getenv('URL')
username = os.getenv('USERNAME')
password = os.getenv('PASSWORD')
print tree
dburl = tree.xpath("//beans:bean[@id='dataSource']/beans:property[@name='url']",namespaces={
    'beans':'http://www.springframework.org/schema/beans'
})
dburl[0].set("value", hostname)
dbusername = tree.xpath("//beans:bean[@id='dataSource']/beans:property[@name='username']",namespaces={
    'beans':'http://www.springframework.org/schema/beans'
})
dbusername[0].set("value",username)
dbpassword = tree.xpath("//beans:bean[@id='dataSource']/beans:property[@name='password']",namespaces={
    'beans':'http://www.springframework.org/schema/beans'
})
dbpassword[0].set("value",password)
str = etree.tostring(tree, pretty_print=True)
with open(sys.argv[1], "wb+") as f:
    f.write(str)




