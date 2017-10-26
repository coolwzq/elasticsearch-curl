index=$1

curl -XDELETE localhost:9200/"$index"?pretty
