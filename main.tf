resource "newrelic_one_dashboard" "dash-one" {
for_each = var.new-dash
  name = each.value.name
  description = each.value.description

  dynamic "page" {
    for_each = each.value.pages
    content {
      name = page.value.name

       
      dynamic "widget_billboard" {
        for_each = lookup(page.value.widgets, "billboard", {})
        # for_each= page.value.widgets.billboard
        content {
          title = widget_billboard.value.title
          row =   widget_billboard.value.row
          column = widget_billboard.value.column
          height = widget_billboard.value.height
          nrql_query {
            query = widget_billboard.value.settings.query
          }
        }
        
      }

     dynamic "widget_bar" {
        for_each = lookup(page.value.widgets, "bar", {})
        # for_each= page.value.widgets.bar
        content {
          title = widget_bar.value.title
          row =   widget_bar.value.row
          column = widget_bar.value.column
          height = widget_bar.value.height
          nrql_query {
            query =widget_bar.value.settings.query
          }
        }
        
      }

          dynamic "widget_table" {
        for_each = lookup(page.value.widgets, "table", {})
        # for_each= page.value.widgets.bar
        content {
          title = widget_table.value.title
          row =   widget_table.value.row
          column = widget_table.value.column
          height = widget_table.value.height
          nrql_query {
            query =widget_table.value.settings.query
          }
        }
        
      }


      
    }
  }
 


}