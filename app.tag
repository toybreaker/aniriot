<app>
    <nav>
      <div class="years_links">
          <a href="/" class="button hide" id="button">start</a>

          <a each={ data } href="#{ animal }">
            { id }
          </a>
        </div>
    </nav>

    <article>
        <p>{ page.animal || 'WHICH ANIMAL ARE YOU?' }</p>
        <p>{ page.id || 'Click the year when you were born!' }</p>
    </article>

    <script>

      var self = this
        self.data = [
            {
                id: '2000',
                animal: 'dragon'
            }, {
                id: '2001',
                animal: 'snake'
            }, {
                id: '2002',
                animal: 'horse'
            }, {
                id: '2003',
                animal: 'goat'
            }, {
                id: '2004',
                animal: 'monkey'
            }, {
                id: '2005',
                animal: 'rooster'
            }, {
                id: '2006',
                animal: 'dog'
            }, {
                id: '2007',
                animal: 'pig'
            }, {
                id: '2008',
                animal: 'rat'
            }, {
                id: '2009',
                animal: 'buffalo'
            }, {
                id: '2010',
                animal: 'tiger'
            }, {
                id: '2011',
                animal: 'rabbit'
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
        :scope {}
        nav {
            min-width: 100vw;
            min-height: 50vh;
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
        .hide {
            display: none;
        }

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
            height: 46%;
            width: 96%;
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

    </style>

</app>
