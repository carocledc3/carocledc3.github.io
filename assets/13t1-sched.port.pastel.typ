#import "@jx/jx-palettes:0.1.0": *
#import "@preview/modpattern:0.1.0": *

#set page(
  width: 21in,
  height: 30in,
  margin: 0.25in,
  fill: brand.b0,
)

#set text(hyphenate: false)
#set text(font: "Iosevka SS14", size: 16pt)
#let solid-stroke(th: 1pt, fill: brand.b4) = stroke(dash: "solid", paint: fill, thickness: th)
#let dashed-stroke(th: 1pt, fill: brand.b4) = stroke(dash: "dotted", paint: fill, thickness: th)
#let dayOfWeek(name: "", col: brand.b0, odd: false) = grid.cell(
  fill: if (odd) {
    brand.b4.lighten(10%)
  } else {
    brand.b4
  },
  align: horizon + center,
  stroke: 1pt + brand.b4,
)[
  #set text(size: 2.75em, fill: col, weight: "black")
  #name
]

#let periodName(num, time: "", odd: false) = grid.cell(
  x: 0,
  y: num,
  fill: if (odd) {
    brand.b4.lighten(10%)
  } else {
    brand.b4
  },
  align: horizon + center,
  stroke: 1pt + brand.b4,
)[
  #set par(leading: 1.4em)
  #set text(fill: brand.b1)
  #text(size: 2.25em, weight: "bold")[Ar.#num] \ #text(2.25em, weight: "black", fill: brand.b0)[#time]
]

#let subject(
  jxsc: "",
  code: "",
  name: "",
  room: "",
  bgc: copic.c7,
  txc: copic.c2,
  scale: 1,
  lab: false,
) = grid.cell(
  fill: if(not lab){ bgc
  }else{
    modpattern((72pt, 72pt), dx: 0pt, dy: 0pt, background: bgc)[
      #place(top+left)[
        #line(
          start: (0%, 0%),
          end: (100%, 100%),
          stroke: 24pt + color.mix(
            (bgc, 90%),
            (txc, 10%)
          )
        )
        ]
    ]
  },
  align: center,
  inset: 0in
)[
  #rect(inset: 0.05in, width: 100%, height: 100%, stroke: none)[

    #place(top+left, dy:0.1in, dx: 0.05in)[
        #text(fill: txc.transparentize(20%), style: "italic", size: 1.25em, weight: "semibold")[
          #jxsc/#code \
        #text(weight: "black", size: 1.3127em)[\@ #room]
        ]
      ]

    #place(bottom+left, dy: -0.25in, dx: 0.05in)[
      #text(fill: txc, size: 2.2em * (0.95*scale), weight: "black")[#name]
      ]

    #if(lab){[#place(top+right, dx: 0.05in-1pt, dy: -0.05in+1pt)[
      #rotate(0deg, reflow: true)[#rect(fill: txc, height: 2.5em, inset: 0.5em)[
        #show:align.with(horizon+center)
        #set text(fill: bgc, weight: 900, size: 1.75em)
        Lab
      ]]
    ]]}
    ]
]

// SUBJECT DEFINITIONS -- SUBJECT DEFINITIONS -- SUBJECT DEFINITIONS -- SUBJECT DEFINITIONS -- SUBJECT DEFINITIONS --

#let hist = subject(
  jxsc: "30RH",
  code: "HIST100",
  name: "Readings in Philippine History",
  room: "U705",
  bgc: ctp-moch.peach,
  txc: tailwind.orange-900,
)

#let math = subject(
  jxsc: "30MT",
  code: "MATH100",
  name: "Mathematics in the Modern World",
  room: "U706",
  bgc: ctp-moch.green,
  txc: tailwind.green-900,
)

#let hci = subject(
  jxsc: "30HC",
  code: "CC7",
  name: "Human-\nComputer Interaction",
  room: "U705",
  bgc: ctp-moch.yellow,
  txc: tailwind.yellow-900,
)

#let purcom = subject(
  jxsc: "30PC",
  code: "ENGL100",
  name: "Purposive Communication",
  room: "U705",
  bgc: ctp-moch.red,
  txc: tailwind.rose-900,
)

#let cfl = subject(
  jxsc: "30CFl",
  code: "CC1",
  name: "Computing Fundamentals",
  room: "M303",
  bgc: ctp-moch.sky,
  txc: tailwind.sky-900,
  lab: true,
)

#let cf = subject(
  jxsc: "30CF",
  code: "CC1",
  name: "Computing Fundamentals",
  room: "M304",
  bgc: ctp-moch.sky,
  txc: tailwind.sky-900,
)

#let prog7l = subject(
  jxsc: "30IPl",
  code: "CC2",
  name: "Introduction to Computer Programming",
  room: "M303",
  bgc: ctp-moch.blue,
  txc: tailwind.blue-900,
  lab: true,
)

#let prog7 = subject(
  jxsc: "30IP",
  code: "CC2",
  name: "Introduction to Computer Programming",
  room: "M301",
  bgc: ctp-moch.blue,
  txc: tailwind.blue-900,
)

#let nstp = subject(
  jxsc: "30NS",
  code: "NSTP1",
  name: "Nat'l Service Training Programme",
  room: "Auditorium / Theatre",
  bgc: ctp-moch.flamingo,
  txc: copic.e47,

)

#let mct = subject(
  jxsc: "30MC",
  code: "PATHFit1",
  name: "Movement Competency Training",
  room: "Gymnasium",
  bgc: ctp-moch.mauve.mix(ctp-moch.pink),
  txc: tailwind.fuschia-900.rotate(10deg).desaturate(20%),
)

// -- END SUBJECT DEFINITIONS --

#grid(
  columns: (0.45fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  rows: (0.33fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,),
  stroke: (x: dashed-stroke(th: 2pt), y: solid-stroke(th: 2pt)),

  dayOfWeek(name: "T30"),
  dayOfWeek(name: "Monday", col: ctp-moch.blue, odd: true),
  dayOfWeek(name: "Tuesday", col: ctp-moch.red,),
  dayOfWeek(name: "Wednesday", col: ctp-moch.green, odd: true),
  dayOfWeek(name: "Thursday", col: ctp-moch.yellow,),
  dayOfWeek(name: "Friday", col: ctp-moch.teal, odd: true),
  dayOfWeek(name: "Saturday", col: ctp-moch.mauve,),

  periodName(1, time: "07:30 08:50", odd: true),
  periodName(2, time: "08:50 10:10", odd: false),
  periodName(3, time: "10:10 11:30", odd: true),
  periodName(4, time: "11:30 12:50", odd: false),
  periodName(5, time: "12:50 14:10", odd: true),
  periodName(6, time: "14:10 15:30", odd: false),
  periodName(7, time: "15:30 16:50", odd: true),
  periodName(8, time: "16:50 18:10", odd: false),

  // periodName(1, time: "🯰🯷🯳🯰 - 🯰🯸🯵🯰", odd: true),
  // periodName(2, time: "🯰🯸🯵🯰 - 🯱🯰🯱🯰", odd: false),
  // periodName(3, time: "🯱🯰🯱🯰 - 🯱🯱🯳🯰", odd: true),
  // periodName(4, time: "🯱🯱🯳🯰 - 🯱🯲🯵🯰", odd: false),
  // periodName(5, time: "🯱🯲🯵🯰 - 🯱🯴🯱🯰", odd: true),
  // periodName(6, time: "🯱🯴🯱🯰 - 🯱🯵🯳🯰", odd: false),
  // periodName(7, time: "🯱🯵🯳🯰 - 🯱🯶🯵🯰", odd: true),
  // periodName(8, time: "🯱🯶🯵🯰 - 🯱🯸🯱🯰", odd: false),

  hist, [], hist, [], hist, [],
  [], hci, [], hci, [], hci,
  math, [], math, [], math, [],
  purcom, cfl, purcom, cfl, purcom, cfl,
  [], cf, [], cf, [], [],
  prog7l, [], prog7l, [], prog7l, [],
  prog7, nstp, prog7, nstp, [], [],
  [], mct, [], mct, [], [],

)