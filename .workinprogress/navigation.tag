<navigation>

  <div class="outer">
    <div class="inner">
      <a href="/" class="button hide" id="button"> start </a>
      <div class="years_links" id="years_links">
        <a each={ years } href="/{ year_animal }" class={ selected: parent.selectedId === year_animal }>
          { name }
        </a>
      </div>
    </div>
  </div>

  <script>
    this.years = [
      { name: '2000', year_animal: 'dragon' },
      { name: '2001', year_animal: 'snake' },
      { name: '2002', year_animal: 'horse' },
      { name: '2003', year_animal: 'goat' },
      { name: '2004', year_animal: 'monkey' },
      { name: '2005', year_animal: 'rooster' },
      { name: '2006', year_animal: 'dog' },
      { name: '2007', year_animal: 'pig' },
      { name: '2008', year_animal: 'rat' },
      { name: '2009', year_animal: 'buffalo' },
      { name: '2010', year_animal: 'tiger' },
      { name: '2011', year_animal: 'rabbit' }
    ]


  </script>

  <style scoped>
    :scope {
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
    .hide { display: none; }

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


  </style>
</navigation>
