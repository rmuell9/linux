
windowrulev2 = float,class:(blueberry.py)
windowrulev2 = size 700 600,class:(blueberry.py)
windowrulev2 = center,class:(blueberry.py)

i want blueberry to open right under my bluetooth module upper right of screen on waybar

To position the blueberry window in the upper right area under your Waybar bluetooth module, replace your current rules with:

```
windowrulev2 = float,class:(blueberry.py)
windowrulev2 = size 500 400,class:(blueberry.py)
windowrulev2 = move 100%-720 40,class:(blueberry.py)
```

This positions the window 20px from the right edge of screen and 40px from the top (adjust the `40` value based on your Waybar height).
