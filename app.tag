<app class="{ page.animal } { page.element } { page.id }">
    <nav class="years_links">
        <a href="/" class="button left" id="button">WHICH ANIMAL ARE YOU?</a>

        <a each={ data } href="#{ animal }">{ id }</a>
    </nav>

    <main class="animals">
        <table class="animal">
          <tr>
              <td>element</td>
              <td class="animal_element">{ page.element || 'TAP BIRTH YEAR' }</td>
            </tr>
            <tr>
              <td>animal</td>
              <td class="animal_animal">{ page.animal || '' }</td>
            </tr>
            <tr>
              <td>period</td>
              <td class="animal_period">{ page.period || '' }</td>
            </tr>
            <tr>
              <td>hours</td>
              <td class="animal_hours">{ page.hour || '' }</td>
            </tr>
            <tr>
              <td>fixed element</td>
              <td class="animal_fixed_element">{ page.fixed_element || '' }</td>
            </tr>
            <tr>
              <td>energy</td>
              <td class="animal_energy">{ page.energy || '' }</td>
            </tr>
            <tr>
              <td>intensity</td>
              <td class="animal_intensity">{ page.intensity || '' }</td>
            </tr>
          </table>
        </div>
    </main>

    <script>

        var self = this
        self.data = [
            {
                id: '2000',
                animal: 'dragon',
                element: 'metal',
                period: 'Feb 05 2000 – Jan 23 2001',
                hour: '07:00 – 09:00 am',
                fixed_element: 'Earth',
                energy: 'Yang',
                intensity: '4'
            }, {
                id: '2001',
                animal: 'snake',
                element: 'metal',
                period: 'Jan 24 2001 – Feb 11 2002',
                hour: '09:00 – 11:00 am',
                fixed_element: 'Fire',
                energy: 'Yin',
                intensity: '3'
            }, {
                id: '2002',
                animal: 'horse',
                element: 'water',
                period: 'Feb 12 2002 - Jan 31 2003',
                hour: '11:00 – 01:00 pm',
                fixed_element: 'Fire',
                energy: 'Yin',
                intensity: '2'
            }, {
                id: '2003',
                animal: 'goat',
                element: 'water',
                period: 'Feb 01 2003 - Jan 21 2004',
                hour: '01:00 – 03:00 pm',
                fixed_element: 'Earth',
                energy: 'Yang',
                intensity: '1'
            }, {
                id: '2004',
                animal: 'monkey',
                element: 'wood',
                period: 'Jan 22 2004 - Feb 08 2005',
                hour: '03:00 – 05:00 pm',
                fixed_element: 'Metal',
                energy: 'Yang',
                intensity: '4'
            }, {
                id: '2005',
                animal: 'rooster',
                element: 'wood',
                period: 'Feb 09 2005 - Jan 28 2006',
                hour: '05:00 – 07:00 pm',
                fixed_element: 'Metal',
                energy: 'Yin',
                intensity: '3'
            }, {
                id: '2006',
                animal: 'dog',
                element: 'fire',
                period: 'Jan 29 2006 - Feb 17 2007',
                hour: '07:00 – 09:00 pm',
                fixed_element: 'Earth',
                energy: 'Yin',
                intensity: '2'
            }, {
                id: '2007',
                animal: 'pig',
                element: 'fire',
                period: 'Feb 18 2007 - Feb 06 2008',
                hour: '09:00 – 11:00 pm',
                fixed_element: 'Water',
                energy: 'Yang',
                intensity: '1'
            }, {
                id: '2008',
                animal: 'rat',
                element: 'earth',
                period: 'Feb 07 2008 - Jan 25 2009',
                hour: '11:00 pm – 01:00 am',
                fixed_element: 'Water',
                energy: 'Yang',
                intensity: '4'
            }, {
                id: '2009',
                animal: 'ox',
                element: 'earth',
                period: 'Jan 26 2009 - Feb 13 2010',
                hour: '01:00 – 03:00 am',
                fixed_element: 'Earth',
                energy: 'Yin',
                intensity: '3'
            }, {
                id: '2010',
                animal: 'tiger',
                element: 'metal',
                period: 'Feb 14 2010 - Feb 02 2011',
                hour: '03:00 – 05:00 am',
                fixed_element: 'Wood',
                energy: 'Yin',
                intensity: '2'
            }, {
                id: '2011',
                animal: 'rabbit',
                element: 'metal',
                period: 'Feb 03 2011 - Jan 22 2012',
                hour: '05:00 – 07:00 am',
                fixed_element: 'Wood',
                energy: 'Yang',
                intensity: '1'
            }
        ]

        self.page = self.data[0]

        riot.route(function (animal) {
            self.page = self.data.filter(function (r) {
                return r.animal == animal
            })[0] || {}
            self.update()
        })
    </script>

    <style scoped>
        :scope {
          display: block;
          position: fixed;
          top: 0; left: 0; right: 0; bottom: 0;
          overflow: hidden;
          margin: 0;
          padding: 0 1rem;
        }
        nav {
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .button {
            width: 100%;
            margin-top: 1rem;
            left: 0;
        }
        .hide {
            display: none;
        }

        .years_links {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 1rem;
        }

        a {
            text-decoration: none;
            padding: 0.5rem 1rem;
            color: red;
        }

        /* animals */
        .animal > * {
            padding: 0 0.25rem;
        }
        .animal_year {
            opacity: 0.25;
        }
        .animal_element {
            opacity: 0.75;
            font-weight: 400;
        }
        .animal_animal {
            font-size: 2rem;
            line-height: normal;
            font-weight: 100;
        }
        .animals {
            align-self: stretch;
        }

        .animal {
          min-width: 100%;
          min-height: 100%;
          line-height: 1.4;
          text-align: center;
          padding-bottom: 1rem;
        }
        .animal tr {

        }
        .animal td:first-child {
          text-align: left;
          color: #666;
          font-size: .75rem;
        }
        .animal td:last-child {
          text-align: right;
        }
        .left {
          text-align: left;
        }
        .right {
          text-align: right;
        }
        label {
          display: inline-block;
          opacity: .5;
        }

        :scope.ox,
        :scope.dog,
        :scope.dragon,
        :scope.goat,
        :scope.horse,
        :scope.monkey,
        :scope.pig,
        :scope.rabbit,
        :scope.rat,
        :scope.rooster,
        :scope.snake,
        :scope.tiger {
            background-position: center bottom;
            background-repeat: no-repeat;
            background-clip: content-box;
            background-size: contain;

        }

        :scope.rat {
            background-image: url("svg/3/rat.svg");
        }
        :scope.ox {
            background-image: url("svg/3/ox.svg");
        }
        :scope.tiger {
            background-image: url("svg/3/tiger.svg");
        }
        :scope.rabbit {
            background-image: url("svg/3/rabbit.svg");
        }
        :scope.dragon {
            background-image: url("svg/3/dragon.svg");
        }
        :scope.snake {
            background-image: url("svg/3/snake.svg");
        }
        :scope.horse {
            background-image: url("svg/3/horse.svg");
        }
        :scope.goat {
            background-image: url("svg/3/goat.svg");
        }
        :scope.monkey {
            background-image: url("svg/3/monkey.svg");
        }
        :scope.rooster {
            background-image: url("svg/3/rooster.svg");
        }
        :scope.dog {
            background-image: url("svg/3/dog.svg");
        }
        :scope.pig {
            background-image: url("svg/3/pig.svg");
        }

    </style>

</app>
