<app>
    <nav>
        <div class="years_links">
            <a href="/" class="button left" id="button">WHICH ANIMAL ARE YOU?</a>

            <a each={ data } href="#{ animal }">{ id }</a>
        </div>
    </nav>

    <main class="animals">
        <div class="animal { page.animal } { page.element } { page.id }">
            <p class="animal_element right">{ page.element || 'TAP BIRTH YEAR' }</p>
            <p class="animal_animal right">{ page.animal || '' }</p>
            <p class="animal_period right">{ page.period || '' }</p>
            <p class="animal_hours right">{ page.hour || '' }</p>
            <p class="animal_fixed_element right">{ page.fixed_element || '' }</p>
            <p class="animal_energy right">{ page.energy || '' }</p>
            <p class="animal_intensity right">{ page.intensity || '' }</p>

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
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            overflow: hidden;
            margin: 0 auto;
            padding: 0 1rem;
            max-width: 1000px;
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
        }

        a {
            display: inline-block;
            text-decoration: none;
            padding: 0.5rem 1rem;
            color: red;
        }
        main p {
            text-transform: none;
            text-align: center;
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
            min-height: 70vh;
        }

        .animal {
            min-height: 70vh;
            line-height: 1.4;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: stretch;
            justify-content: flex-end;
            padding-bottom: 1rem;
        }
        .animal span {
            display: inline-block;
            margin-top: -1rem;
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

        .ox,
        .dog,
        .dragon,
        .goat,
        .horse,
        .monkey,
        .pig,
        .rabbit,
        .rat,
        .rooster,
        .snake,
        .tiger {
            background-position: center top;
            background-repeat: no-repeat;
            background-clip: content-box;
            background-size: cover;

        }

        .rat {
            background-image: url("svg/3/rat.svg");
        }
        .ox {
            background-image: url("svg/3/ox.svg");
        }
        .tiger {
            background-image: url("svg/3/tiger.svg");
        }
        .rabbit {
            background-image: url("svg/3/rabbit.svg");
        }
        .dragon {
            background-image: url("svg/3/dragon.svg");
        }
        .snake {
            background-image: url("svg/3/snake.svg");
        }
        .horse {
            background-image: url("svg/3/horse.svg");
        }
        .goat {
            background-image: url("svg/3/goat.svg");
        }
        .monkey {
            background-image: url("svg/3/monkey.svg");
        }
        .rooster {
            background-image: url("svg/3/rooster.svg");
        }
        .dog {
            background-image: url("svg/3/dog.svg");
        }
        .pig {
            background-image: url("svg/3/pig.svg");
        }

    </style>

</app>
