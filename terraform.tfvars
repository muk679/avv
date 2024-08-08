new-dash = {
  "dash-widge" = {
    name        = "dashbooards 2 pages"
    description = "2 page dashboards"

    pages = {
      "page_1" = {
        name = "page-one"

        widgets = {
          billboard = {
            "widget_1" = {

              title  = "total transaction"
              row    = 1
              column = 1
              width  = 6
              height = 6
              settings = {
                query = "FROM Transaction SELECT count(*) AS 'total transactions'"
              }
            }

            "widget_2" = {

              title  = "total transaction"
              row    = 1
              column = 7
              width  = 7
              height = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `duration` > 0) AS Availability FROM Transaction"

              }
            }

            "widget_3" = {

              title  = "total transaction"
              row    = 1
              column = 1
              width  = 7
              height = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `error` IS false) AS TransactionSuccessRate FROM Transaction"

              }
            }


          }
          


        }
      },


      "page-2" = {
        name = "page-two"

        widgets = {
          bar = {
            "wid-bar" = {

              title  = "error rate"
              row    = 1
              column = 1
              height = 5
              width  = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `error` IS true) AS ErrorRate FROM Transaction"

              }
            }

            "wid-bar-2" = {
              title  = "error rate"
              row    = 1
              column = 1
              height = 7
              width  = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `error` IS true) AS ErrorRate FROM Transaction"

              }
            }


          }

          table = {
            "wid-table" = {
              title  = "error rate"
              row    = 1
              column = 1
              height = 5
              width  = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `error` IS true) AS ErrorRate FROM Transaction"

              }
            }

            "wid-table-2" = {
              title  = "error rate"
              row    = 1
              column = 1
              height = 5
              width  = 6
              settings = {
                query = "SELECT percentage(count(*), WHERE `error` IS true) AS ErrorRate FROM Transaction"

              }
            }


          }
        }
      }
    }


  }
}
