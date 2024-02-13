# builder container
FROM alpine AS builder
RUN mkdir nora
WORKDIR /nora 
ADD data.txt  /nora

# final container 
FROM fedora
RUN mkdir nora
WORKDIR /nora 
COPY --from=builder /nora/data.txt /nora/
