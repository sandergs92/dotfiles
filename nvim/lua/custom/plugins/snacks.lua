return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    image = {

      -- your image configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      formats = {
        'png',
        'PNG',
        'jpg',
        'JPG',
        'jpeg',
        'gif',
        'bmp',
        'webp',
        'tiff',
        'heic',
        'HEIC',
        'avif',
        'mp4',
        'mov',
        'avi',
        'mkv',
        'webm',
        'pdf',
      },
      force = true, -- try displaying the image, even if the terminal does not support it
    },
  },
}
