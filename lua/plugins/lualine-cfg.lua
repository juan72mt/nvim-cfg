require('lualine').setup{
  options = {
    icons_enable= true,
    theme = 'palenight'  --'iceberg_dark',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
