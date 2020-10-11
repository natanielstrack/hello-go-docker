Space gain with different images

REPOSITORY         |TAG                |IMAGE ID           |CREATED            |SIZE   
-------------------|-------------------|-------------------|-------------------|-----:
my-golang-app      |latest             |0ba4f474abc2       |22 seconds ago     |2.03MB
golang             |1.15               |05c8f6d2538a       |4 weeks ago        |839MB
golang             |alpine             |b3bc898ad092       |4 weeks ago        |300MB

* golang:1.15 is the biggest
* goland:alpine is less than half the size
* multistaging building just copying the binarys to a scratch images is crazy small
