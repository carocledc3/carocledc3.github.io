#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": *
#import fletcher.shapes: *
#import "@jx/jx-palettes:0.1.0": *

#set page( width: 16.8in, height: 12in, margin: 0.5in, fill: brand.b0 )
#set text(
  font: "Iosevka SS14",
  size: 18pt,
  fill: brand.b4
)

#show "Bldg.": "Bᵈ·"

#place(center+top, dx: 0in, dy: -0.4in)[
  #set text(42pt, weight: 900)
  #block(fill: brand.b4, inset: (x: 0.05in, y: 0.05in), width: 100% + 0.8in, height: 1.25in)[
    #show: align.with(horizon+center)
    #set text(fill: brand.b0)
    #block(fill: brand.b1.mix(brand.b0), inset: (x: 0.05in, y: 0.05in) ,width: 100%, height: 100%)[
      #block(fill: brand.b4, inset: (x: 0.05in, y: 0.05in) ,width: 100%, height: 100%)[T30 · Diagram of Relevant Rooms]
    ]
    ]
]

#align(center+bottom)[#diagram(
  cell-size: 0.1in, debug: 0,
  edge-stroke: 1pt + brand.b4,
  
  {
    let gate(col) = (
      shape: hexagon,
      inset: 12pt,
      stroke: 2pt + tailwind.at(col + "-600"),
      fill: tailwind.at(col + "-100"),
      extrude: (3,0)
      )

    let floor(col) = (
      shape: circle,
      inset: 6pt,
      stroke: 1.5pt + tailwind.at(col + "-600"),
      fill: tailwind.at(col + "-100"),
      extrude: (3,1)
      )

    let room(col) = (
      shape: house,
      stroke: 1.5pt + tailwind.at(col + "-600"),
      fill: tailwind.at(col + "-100")
    )

    

    node( name: <gate3>, (1,0), ..gate("green") )[#set text(weight: 900, size: 1.5em);*Gate 3*]
    node( name: <gate1>, (3,0), ..gate("cyan") )[#set text(weight: 900, size: 1.5em);*Gate 1*]
    node( name: <gate2>, (5,0), ..gate("blue") )[#set text(weight: 900, size: 1.5em);*Gate 2*#v(-1em)#sub[_Main Gate_]\ ]
    node( name: <gate8>, (6.75,0), ..gate("purple") )[#set text(weight: 900, size: 1.5em);*Gate 8*]
  


    node( name: <uf4>, (1,1), ..floor("green"))[#set text(weight: 900, size: 1.5em);*U4*] 
    node( name: <mf4>, (3,1), ..floor("cyan"))[#set text(weight: 900, size: 1.5em);*M4*]
    node( name: <sf4>, (5,1), ..floor("blue"))[#set text(weight: 900, size: 1.5em);*S4*]
    node( name: <ff4>, (6.75,1), ..floor("purple"))[#set text(weight: 900, size: 1.5em);*F4*]

    node( name: <mf5>, (2,2), ..floor("cyan"))[#set text(weight: 900, size: 1.5em);*M5*]
    node( name: <mf3>, (3,3), ..floor("cyan"))[#set text(weight: 900, size: 1.5em);*M3*]
    node( name: <sf5>, (4,1), ..floor("blue"))[#set text(weight: 900, size: 1.5em);*S5*]
    node( name: <uf5>, (1,2), ..floor("green"))[#set text(weight: 900, size: 1.5em);*U5*]
    node( name: <uf7>, (1,3), ..floor("green"))[#set text(weight: 900, size: 1.5em);*U7*]
    node( name: <sf9>, (6,3), ..floor("blue"))[#set text(weight: 900, size: 1.5em);*S9*]
    node( name: <mf2>, (2,6.5), ..floor("cyan"))[#set text(weight: 900, size: 1.5em);*M2*]
    node( name: <sf3>, (5,6), ..floor("blue"))[#set text(weight: 900, size: 1.5em);*S3*]
    
    edge(<mf5>,(2,1.5),(4,1.5),<sf5>)
    
    edge(<uf4>,<gate3>)
    edge(<sf4>,<gate2>)
    edge(<mf4>,<gate1>)
    edge(<uf4>,<uf5>, marks: "=>", label:[*𜲄▲*])
    edge(<uf5>,<uf7>, marks: "=>", label:[*𜲄▲*])

    edge(<sf5>,<sf4>, marks: "=>", label:[*𜲄▼*])

    edge((3,1),(1,1))

    

    node( name: <u501>, (0,2), ..room("green"))[*U501*\ Lib.ᴺ2]
    node( name: <u705>, (0,4), ..room("green"))[*U705*]
    node( name: <u706>, (0,5), ..room("green"))[*U706*]

    edge(<uf5>,<u501>)
    edge(<uf7>,"d",<u705>)
    edge(<uf7>,"dd",<u706>)

    edge(<gate8>,<ff4>)
    edge(<clinic>,<ff4>)
    edge(<sf4>,<ff4>)

    node( name: <m301>, (4, 3), ..room("cyan") )[*M301*]
    node( name: <m303>, (4, 4), ..room("cyan") )[*M303*]
    node( name: <m304>, (4, 5), ..room("cyan") )[*M304*]
    node( name: <gym>, (4, 6), ..room("blue") )[*Gymnasium*]
    node( name: <cant>, (1, 6), ..room("pink") )[*Canteen*]

    node( name: <th>, (1.5, 4), ..room("cyan") )[*Theatre*]

    node( name: <lib>, (2, 3), ..room("cyan") )[*M500*\ Library]
    edge(<mf5>,<lib>)

    edge(<mf3>,<m301>)
    edge(<gym>,<sf3>)
    edge(<mf3>,"d",<m303>)
    edge(<mf3>,"dd",<m304>)
    edge(<mf3>,"ddd",<gym>)

    

    edge(<mf4>,"d",<mf5>, marks: "=>", label:[*𜲄▲*], label-pos: 0.7)
    edge(<sf3>,<sf4>, marks: "=>", label:[*𜲄▲*],)
    edge(<mf4>,"d",<mf3>, marks: "=>", label:[*𜲄▼*], label-pos: 0.75, label-anchor:"north-east", label-sep: 0.5em)

    edge(<mf2>,<cant>, marks: "=>", label:[*𜲄▼*], label-anchor:"south", label-sep: 0.5em, label-pos: 0.5)
    edge(<mf5>,(1.5,2),<th>, marks: "=>", label:[*𜲄▲*], label-anchor:"west", label-sep: -0.3em, label-pos: 0.7)

    edge(<sf4>, <sf9>,marks: "=>", label:[*◫▲*],)

    node( name: <aud>, (6,5), ..room("blue"))[*9002*\ Auditorium]

    node( name: <clinic>, (6.75,2.25), ..room("purple"))[*F402*\ Clinic]
    edge(<sf9>,<aud>)

    edge(<mf2>,"uuu",(2.5,3.5),<mf3>,"=>", label:[*𜲄▲*], label-anchor:"south", label-sep: -1.5em)

  }
)]

#place(bottom + left)[
  *Legend:*
  #grid(
    columns: (1.5em, 2in), row-gutter: 0.2in,
    align: (center, left),
    [*𜲄*],"Stair Access",
    [*◫*], "Lift Access"
  )
  
]