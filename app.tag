<app>
    <nav>
        <div class="years_links">
            <a href="/" class="button" id="button">start</a>

            <a each={ data } href="#{ animal }">{ id }</a>
        </div>
    </nav>

    <article class="animals">
        <div class="animal { page.animal }">
            <span>{ page.id || 'WHICH ANIMAL ARE YOU?' }</span>
            <span>{ page.element || 'Click the year when you were born!' }</span>
            <span>{ page.animal || '' }</span>
        </div>
    </article>

    <script>

        var self = this
        self.data = [
            {
                id: '2000',
                animal: 'dragon',
                element: 'metal'
            }, {
                id: '2001',
                animal: 'snake',
                element: 'metal'
            }, {
                id: '2002',
                animal: 'horse',
                element: 'water'
            }, {
                id: '2003',
                animal: 'goat',
                element: 'water'
            }, {
                id: '2004',
                animal: 'monkey',
                element: 'wood'
            }, {
                id: '2005',
                animal: 'rooster',
                element: 'wood'
            }, {
                id: '2006',
                animal: 'dog',
                element: 'fire'
            }, {
                id: '2007',
                animal: 'pig',
                element: 'fire'
            }, {
                id: '2008',
                animal: 'rat',
                element: 'earth'
            }, {
                id: '2009',
                animal: 'buffalo',
                element: 'earth'
            }, {
                id: '2010',
                animal: 'tiger',
                element: 'metal'
            }, {
                id: '2011',
                animal: 'rabbit',
                element: 'metal'
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
          justify-content: center;
          align-items: center;
          flex-direction: column;
          height: 100vh;
          overflow: hidden;
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
            justify-content: center;
            align-items: center;
            padding: 1rem;
            margin: 2vh 2vw;
        }

        a {
            display: inline-block;
            text-decoration: none;
            padding: 0.5rem 1rem;
            color: red;
        }
        article p {
            text-transform: none;
            text-align: center;
        }

        /* animals */
        .animals {
          align-self: stretch;
        }

        .animal {
            min-height: 70%;
            line-height: 2;
            text-align: center;
        }
        .animal span {
          display: inline-block;
          margin-top: -1rem;
        }

        .buffalo,
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
            background-size: contain;
        }

        .rat {
            background-image: url("svg/1/rat.svg");
        }
        .buffalo {
            background-image: url("svg/1/buffalo.svg");
        }
        .tiger {
            background-image: url("svg/1/tiger.svg");
        }
        .rabbit {
            background-image: url("svg/1/rabbit.svg");
        }
        .dragon {
            background-image: url("svg/1/dragon.svg");
        }
        .snake {
            background-image: url("svg/1/snake.svg");
        }
        .horse {
            background-image: url("svg/1/horse.svg");
        }
        .goat {
            background-image: url("svg/1/goat.svg");
        }
        .monkey {
            background-image: url("svg/1/monkey.svg");
        }
        .rooster {
            background-image: url("svg/1/rooster.svg");
        }
        .dog {
            background-image: url("svg/1/dog.svg");
        }
        .pig {
            background-image: url("svg/1/pig.svg");
        }

    </style>

</app>
