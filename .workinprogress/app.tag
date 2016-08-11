<app>

  <nav role="navigation" class="years" id="y">
    <div class="outer">
      <div class="inner">
        <a href="/" class="button hide" id="button"> start </a>
        <div class="years_links" id="years_links">
          <a href="#{ animal }" each={ years }>{ year }</a>
        </div>
      </div>
    </div>
  </nav>

  <main role="main" class="animals hide" id="a">

    <div id="{ animal }" class="animal { animal }" each={ years }>
      <div class="title">{ animal }</div>
    </div>

  </main>

  <script>
    this.years = [
      { year: '2000', animal: 'dragon' },
      { year: '2001', animal: 'snake' },
      { year: '2002', animal: 'horse' },
      { year: '2003', animal: 'goat' },
      { year: '2004', animal: 'monkey' },
      { year: '2005', animal: 'rooster' },
      { year: '2006', animal: 'dog' },
      { year: '2007', animal: 'pig' },
      { year: '2008', animal: 'rat' },
      { year: '2009', animal: 'buffalo' },
      { year: '2010', animal: 'tiger' },
      { year: '2011', animal: 'rabbit' }
    ];


  </script>

  <style scoped>
    :scope {

    }
    .years {
      min-width: 100vw;
      min-height: 100vh;
      font-size: calc( 2vh + 2vw);
      display: flex;
      justify-content: center;
      align-items: center;

      margin: 0;
      padding: 0;
      text-align: center;
    }
    .button {
      position: fixed;
      top: 0;
      left: 0;
    }
    .hide { display: none!important; }

    .years_links {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      -webkit-box-pack: center;
      -webkit-justify-content: center;
      -ms-flex-pack: center;
      justify-content: center;
      -webkit-box-align: center;
      -webkit-align-items: center;
      -ms-flex-align: center;
      align-items: center;
      padding: 1rem;
      height: 96%;
      width: 96%;
      margin: 2vh 2vw;
    }

    /* red frame */
    .inner {
      margin-top:-1.5vh;
      margin-left:.5vw;
      width: 89vw;
    	height: 89vh;
    	background: black;
    	-webkit-clip-path: polygon(0% 5%, 5% 5%, 5% 0%, 95% 0%, 95% 5%, 100% 5%, 100% 95%, 95% 95%, 95% 100%, 5% 100%, 5% 95%, 0% 95%);
      clip-path: polygon0% 5%, 5% 5%, 5% 0%, 95% 0%, 95% 5%, 100% 5%, 100% 95%, 95% 95%, 95% 100%, 5% 100%, 5% 95%, 0% 95%);
    }

    .outer {
      width: 90vw;
    	height: 90vh;

      -webkit-clip-path: polygon(0% 5%, 5% 5%, 5% 0%, 95% 0%, 95% 5%, 100% 5%, 100% 95%, 95% 95%, 95% 100%, 5% 100%, 5% 95%, 0% 95%);
      clip-path: polygon(0% 5%, 5% 5%, 5% 0%, 95% 0%, 95% 5%, 100% 5%, 100% 95%, 95% 95%, 95% 100%, 5% 100%, 5% 95%, 0% 95%);

      background-color: red;
    }


    a {
      display: inline-block;
      text-decoration: none;
      padding: .5rem 1rem;
      color: red;
    }


    /* view visibility logic and animation */
    main > * { display: none; }
    main > *:last-child { display: block; }

    @keyframes pulse {
      0% { transform: scale(0.25) }
      50% { transform: scale(1.05) }
      100% { transform: scale(1) }
    }

    main > *:target {
      display: block;
      animation: pulse 0.5s linear 1;
    }

    main > *:target ~ * { display: none; }

    /* animals */

    .animals .animal {
      min-height: 100vh;
      font-size: calc( 6vh + 6vw);
      line-height: 50vh;
      text-align: center;
    }

    .rat,
    .buffalo,
    .tiger,
    .rabbit,
    .dragon,
    .snake,
    .horse,
    .goat,
    .monkey,
    .rooster,
    .dog,
    .pig
     {
      background-position: center bottom;
      background-repeat: no-repeat;
      background-clip: content-box;
      background-size: contain;
    }

    .rat{background-image: url(svg/1/rat.svg);}
    .buffalo{background-image: url(svg/1/buffalo.svg);}
    .tiger{background-image: url(svg/1/tiger.svg);}
    .rabbit{background-image: url(svg/1/rabbit.svg);}
    .dragon{background-image: url(svg/1/dragon.svg);}
    .snake{background-image: url(svg/1/snake.svg);}
    .horse{background-image: url(svg/1/horse.svg);}
    .goat{background-image: url(svg/1/goat.svg);}
    .monkey{background-image: url(svg/1/monkey.svg);}
    .rooster{background-image: url(svg/1/rooster.svg);}
    .dog{background-image: url(svg/1/dog.svg);}
    .pig{background-image: url(svg/1/pig.svg);}



  </style>
</app>
