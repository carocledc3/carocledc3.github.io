/** @type {import('tailwindcss').Config} */
const plugin = require('tailwindcss/plugin')
module.exports = {
  darkMode: 'selector',
  content: [
    "../*.{html,js}"
  ],
  theme: {
    fontSize: {
      sm: '14px',
      base: '18px', // +4
      med: '22px', // +5.5
      lg: '27px', // +7
      xl: '33px', // +8.5
      '2xl': '40px', // +10
      '3xl': '48px', // +11.5
      '4xl': '57px',  
      '5xl': '77px', 
    },

    screens: {
      'xs': '360px',
      'sm': '540px',
      'md': '800px',
      'lg': '1150px',
      'xl': '1536px',
      '2xl': '1920px',
    },

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

