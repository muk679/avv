variable "new-dash" {
  description = "Map of dashboards with their pages and widgets"
  type = map(object({
    name        = string
    description = string
    pages       = map(object({
      name    = string
      widgets = map(map(object({
        title    = string
        row      = number
        column   = number
        width    = number
        height   = number
        settings = map(any)
      })))

    }))
  }))
}