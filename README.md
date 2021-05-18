# Uber h3lib Lambda Layer

This is the source project for an AWS Lambda Layer that contains uber's h3lib.

## Prerequisites

- yarn
- docker

## Setup

```
yarn install
```


## Build

```
yarn build
```

## Deploy

```
yarn deploy
```

## Usage 

This layer contains `libh3.so` on `lib` path.
You can use it from handler through FFI.
