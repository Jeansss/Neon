class Status < SitePrism::Page
  element :h1_title, 'h1.status-header__title'
  elements :div_services, '.status-area .cell.medium-4.grid-cell-gutter'
end