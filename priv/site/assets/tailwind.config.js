module.exports = {
  purge: ["../../**/*.{slime,eex}"],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
        typography: {
            DEFAULT: {
                css: {
                    ul: {
                        '> li': {
                            '&::before': { // more complex example - add before to an li element.
                                'background-color': '#374151',
                            }
                        }
                    },
                    blockquote: {
                        'border-left-color': '#374151',
                    }
                }
            }
        }
    },
    screens: {
      sm: "600px",
      md: "900px",
    },
  },
  variants: {
      extend: {},
  },
  plugins: [require("@tailwindcss/typography")],
  mode: "jit",
}
