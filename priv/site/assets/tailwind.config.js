module.exports = {
  content: ["../../**/*.{slime,eex}"],
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
                        color: theme('colors.cyan'),
                        '&:hover': {
                            color: theme('colors.white'),
                        }
                    },
                    h2: {
                        color: theme('colors.purple'),
                    },
                    h3: {
                        color: theme('colors.purple'),
                    },
                    strong: {
                        color: theme('colors.orange'),
                    },
                    code: {
                        color: theme('colors.green'),
                    },
                    'code::before': {
                        content: '',
                    },
                    'code::after': {
                        content: '',
                    }
                }
            }
        })
    },
    screens: {
      sm: "640px",
    },
    colors: {
        'white': '#f8f8f2',
        'black': '#282a36',
        'bluegrey': 'rgb(57, 59, 88)',
        'purple': '#bd93f9',
        'green': '#50fa7b',
        'cyan': '#8be9fd',
        'orange': '#ffb86c',
        'selection': '#44475a',
    },
    fontFamily: {
        sans: ['Source Sans Pro', 'sans-serif'],
        serif: ['Source Serif Pro', 'serif'],
    },
  },
  variants: {
      extend: {},
  },
  plugins: [require("@tailwindcss/typography")],
  mode: "jit",
}
