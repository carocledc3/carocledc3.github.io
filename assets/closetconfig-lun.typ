#import "@jx/jx-palettes:0.1.0":*

#set page(
  width: 13in, height: 8.5in, margin: 0.5in, fill: brand.b0
)

#let textColour = brand.b4;
#let textColourInv = brand.b0;

#set text(
  font: "Iosevka SS14",
  size: 16pt,
  fill: textColour,
  weight: 600,
)


#let closetfill(item) = pattern(size: (3in, 3in))[
  #image( "./assets/closet-" + item + ".png")
  // #place(top + left)[#rect(width: 100%, height: 100%, fill: rgb("#ffffff40"))]
  ]

#let drawerfill(item) = pattern(size: (4in, 1.5in))[
  #image( "./assets/closet-" + item + ".png", width: 100%, fit: "stretch")
  ]

#let closetSquare(coords, desc: "", dark: false) = rect(fill: closetfill(coords), width: 2in, height: 100%, inset: 0.5em, stroke: 1pt + textColour)[
  #set text(fill: if(dark){ textColourInv } else {textColour})
#place(center + horizon, dy: 0.25em)[#desc]
#place(top + left)[ #set text(1.25em); #strong[#upper(coords)]]
]

#let drawerCell(coords, desc:"",) = rect(fill: drawerfill(coords), width: 100%, height: 100%, stroke: 1pt + textColour, inset: 0.5em)[
  #let drawerBorderWidth = 2em;
  #let drawerBorder = rect(fill: textColour, height: 100% + 1em, width: drawerBorderWidth, stroke: none)
  #place(top + left, dy: -0.5em, dx: -0.5em)[#drawerBorder]
  #place(top + right, dy: -0.5em, dx: 0.25em)[#drawerBorder]

  #set text(fill: brand.b0)
  #place(center + horizon, dy: -0.25em, dx: -0.125em)[#block(inset: (x: 3em))[#desc]]
  #place(top + left, dx: 1.9em)[ #set text(1.25em); #strong[#upper(coords)]]

]


#place(top + right)[
  #grid(columns: 4, rows: 20%,
  closetSquare("b1", desc: "Collared T-Shirts"),
  closetSquare("b2", desc: "Jackets, Light"),
  closetSquare("b3", desc: "Jackets, Medium", dark: true),
  closetSquare("b4", desc: "Jackets, Heavy", dark: true),

  closetSquare("b5", desc: "Jogging Pants", dark: true),
  closetSquare("b6", desc: "Jeans", dark: true),
  closetSquare("b7", desc: "Pants", dark: true),
  closetSquare("b8", desc: "Jackets, Heavy", dark: true),
)
]

#place(bottom + right)[
  #grid(columns: 4, rows: 20%,
  closetSquare("a1", desc: "Pajama Pants", dark: true),
  closetSquare("a2", desc: "Indoor Shirts, White & Coloured"),
  closetSquare("a3", desc: "Indoor Jackets, Light"),
  closetSquare("a4", desc: "Outdoor Shirts, White & Coloured"),

  closetSquare("a5", desc: ""),
  closetSquare("a6", desc: "Indoor Shirts, Grey & Dark", dark: true ),
  closetSquare("a7", desc: "Indoor Jackets, Heavy"),
  closetSquare("a8", desc: "Outdoor Shirts, Grey & Dark", dark: true ),
)
]

#place(top + left)[
  #grid(columns: 3.5in, rows: 20%,
    drawerCell("c1", desc: "Boxers and Socks"),
    drawerCell("c2", desc: "Other Cloths"),
    drawerCell("c3", desc: "Sweaters and Sweatshirts"),
    drawerCell("c4", desc: "Long-Sleeved Polos"),
    drawerCell("c5", desc: "Button-Based Jackets")
  )

]

#place(horizon + right)[
  #block(width: 8in)[
    #align(horizon+center)[
      #block(inset:4pt, stroke: 2pt + textColour)[#block(inset: 1em, fill: textColour)[
        #set text(fill: textColourInv, size: 40pt, weight: 1100)
        CLOSET CONFIGURATION]
      ]
    ]
  ]
]