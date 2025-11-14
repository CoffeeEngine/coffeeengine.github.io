#!/bin/bash

cat > postcss1.config.js <<EOF
module.exports = {
	plugins: [
		require("autoprefixer")
	]
}
EOF
