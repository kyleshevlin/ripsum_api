# Ripsum API

A tiny API for the Ripsum gem.

### Usage

The Ripsum API has just one endpoint:

```
GET /:count/:variance
```

`:count` should be supplied as a number, and is the standard count of words you would like to receive.

`:variance` is optional (it defaults to 0), should be supplied as a number between 1 and 100, equivalent to the percent of variance you would like in your text output.



