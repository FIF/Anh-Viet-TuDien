#!/bin/bash
while IFS='' read -r word || [[ -n "$word" ]]; do
    # echo "$word"
    word2=`echo $word | sed 's/\\r//g'`
    # echo "$word2"
    curl -X GET   'https://ontaptienganh.com/search.html?featureClass=P&style=word&maxRows=20&autoFocus=true&content='"$word2"'&type=english-vietnamese&t=dict&RequestVerificationToken=rw6mQWJP_j3RCpS5zFzrNdj2I7uSEaUsOSjEHELH-5ux_rQjXZ0wnLrcl4EZTG3EbQ8S0QzwrtsJyBDj1ssWtyyltHeM72er5b98w6tnARprBbOiouEhE9u8Mb99ZYOoqniffUaQGcmTMCIRVc1g0g2%3AFgWcbbhtLXx5gfGqdRazx71WNSyxNalygNDs_H7lvMJjIypTj_obMmjptTEjjebT6JKolYDrTR4KG-d3QPJuv8bzbywh5vZY1iy52ODhF1ftATXSnYEegJHwL2hJ9oAH7HpFmVyyvJZRXx12SDMmZ0QfbTgBLiFK-AJBOcF8P_g1'   -H 'Postman-Token: d4ac842a-7f8e-4c80-a7ca-c4eeedc87a5d' > data/$word2.json
    sleep 0.3
done < "$1"
