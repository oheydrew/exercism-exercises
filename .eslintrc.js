module.exports = {
    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true,
        "node": true,
        "jest": true
    },
    "extends": "standard-warn",
    "parserOptions": {
        "ecmaVersion": 6,
        "sourceType": "script",
        "ecmaFeatures": {
            "jsx": true
        }
    },
    "plugins": [
        "react"
    ],
    "rules": {
        "strict": [ // Require 'use strict' in script files
            1,
            "global"
        ],
        "no-var": [ // No "var" - use 'let'/'const'
            "warn"
        ],
        "indent": [ // 2 spaces ftw
            "warn",
            2
        ],
        "quotes": [ // Single Quotes: Memory allocation issue in ruby,
            "warn", // so might as well keep it the same for js
            "single"
        ],
        "semi": [ // ; because without encourages laziness
            "warn",
            "always"
        ],
        "linebreak-style": [ // catch CRLF
            "warn",
            "unix"
        ],
        "react/jsx-uses-vars": [ // fixes weird JSX lint errors
            2
        ]
    }
};