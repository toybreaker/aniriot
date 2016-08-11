<animals>

  <div if={year.name} class="animal {year_animal}">

      <div class="title">{year.year_animal}</div>
      <p>{year.name}</p>

  </div>
  <div if={!year.name} class="hide"></div>

  <script>
    // riot.route('/{year_animal}', function(name) {
    //   console.log('fruit')
    // })
  </script>

  <style scoped>
    :scope {}

    .animal {
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
</animals>
