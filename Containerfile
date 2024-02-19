# builder container
FROM alpine AS builder 
ADD data.txt  /

# final container 
FROM fedora 
COPY --from=builder /data.txt /
