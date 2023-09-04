# adapted from Webpack raw-loader
# https://github.com/webpack-contrib/raw-loader/blob/master/src/index.js

import modularize from "@dashkite/masonry-modularize"

text = modularize ( context ) ->
  do ({ input } = context ) ->
    input = JSON.stringify input
      .replace /\u2028/g, '\\u2028'
      .replace /\u2029/g, '\\u2029'

export { text }
export default text
