module.exports = {
    purge: ["../priv/site/**/*.slime"],
    darkMode: false, // or 'media' or 'class'
    theme: {
      extend: {
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
