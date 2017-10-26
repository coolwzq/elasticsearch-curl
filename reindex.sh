source=$1
dest=$2

curl -XPOST localhost:9200/_reindex"?pretty" -d'
{
  "source": {
    "index": "'$source'"
  },
  "dest": {
    "index": "'$dest'"
  }
}'
