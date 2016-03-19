require "sdl"
require 'dxruby'

Window.caption = "ruby_shooooooting" # ウィンドウのキャプション設定
Window.width = 960        # ウィンドウの横サイズ設定
Window.height = 720       # ウィンドウの縦サイズ設定
Input.setRepeat(0, 5)     # キーのオートリピート設定。5 フレームに 1 回 on

image = Image.load('image/myship.png')
image2 = Image.load('image/enemy.png')

x = 365
y = 680
e_x = 365
e_y = 30
Window.loop do

  if Input.pad_down?(P_BUTTON2) then
    dx = Input.x * 2.4
    dy = Input.y * 3
      if Input.x != 0 and Input.y != 0   # ナナメの時は 0.7 倍
        dx *= 0.7
        dy *= 0.7
      end
    else
      dx = Input.x * 4.8
      dy = Input.y * 6
    if Input.x != 0 and Input.y != 0   # ナナメの時は 0.7 倍
      dx *= 0.7
      dy *= 0.7
    end
  end
    x += dx
    y += dy

    x = 0 if x < 0
    x = 960 - 32 if x > 960 - 32
    y = 0 if y < 0
    y = 720 - 32 if y > 720 - 32
  Window.draw(x,y , image)
  Window.draw(e_x,e_y , image2)
end
