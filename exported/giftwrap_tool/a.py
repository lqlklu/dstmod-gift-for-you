from PIL import Image

img = Image.open("./giftwrap_tool.png")
img = img.resize((112, 112), Image.ANTIALIAS)
img.save("./giftwrap_tool.png", "PNG")
