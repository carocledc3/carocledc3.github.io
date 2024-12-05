/** @type {import('tailwindcss').Config} */
const plugin = require('tailwindcss/plugin')
module.exports = {
  content: [
    "../*.{html,js}"
  ],
  theme: {
    fontFamily: {
      'serif': ["Noto Serif", 'ui-serif', 'serif'],
    },
    extend: {
      colors: {
        'jx': {
          DEFAULT: '#242077',
          50: '#E9F2F9',
          100: '#D5E4F4',
          200: '#ADC5E9',
          300: '#85A1DE',
          400: '#5D78D3',
          500: '#364AC7',
          600: '#2B319F',
          700: '#242077',
          800: '#1E1753',
          900: '#140D2E',
          950: '#0D081C'
        },

        
      },

      fontSize: {
        sm: '15px',
        base: '18px',
        lg: '27px',
        xl: '36px',
        '2xl': '45px',
        '3xl': '54px',
        '4xl': '72px',
        '5xl': '90px',
      }
    },

    textShadow: {
      sm: '0 0 2px var(--tw-shadow-color)',
      DEFAULT: '0 0 4px var(--tw-shadow-color)',
      lg: '0 0 16px var(--tw-shadow-color)',
    },
  },
  plugins: [
    plugin(function ({ matchUtilities, theme }) {
      matchUtilities(
        {
          'text-glow': (value) => ({
            textShadow: value,
          }),
        },
        { values: theme('textShadow') }
      )
    }),
  ],
}

