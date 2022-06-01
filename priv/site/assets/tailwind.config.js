module.exports = {
  purge: ["../../**/*.{slime,eex}"],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
        typography: ({ theme }) => ({
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
                        color: theme('colors.white'),
                    },
                    color: theme('colors.white'),
                    a: {
                        color: theme('colors.white'),
                        '&:hover': {
                            color: theme('colors.white'),
                        }
                    },
                    h2: {
                        color: theme('colors.white'),
                    },
                    h3: {
                        color: theme('colors.white'),
                    },
                    strong: {
                        color: theme('colors.white'),
                    }
                }
            }
        })
    },
    screens: {
      sm: "600px",
      md: "900px",
    },
    colors: {
        'white': '#f8f8f2',
        'black': '#282a36',
    },
  },
  variants: {
      extend: {},
  },
  plugins: [require("@tailwindcss/typography")],
  mode: "jit",
}
