import sys
from dataclasses import dataclass

@dataclass
class Template:
    width: str
    height: str
    background_color: str
    style: str

a4 = Template(
    width="595.27559100",
    height="841.88976400",
    background_color="#ffffffff",
    style="graph"
)

canvas = Template(
    width="5669.20000000",
    height="5669.20000000",
    background_color="#ffffffff",
    style="graph"
)

templates = {"default": a4, "a4": a4, "canvas": canvas} 

file_path = sys.argv[1]
pdf_path = sys.argv[2]
template_name = sys.argv[3]
number_of_pages = sys.argv[4]
pdf_page_width = sys.argv[5]
pdf_page_height = sys.argv[6]
template = templates[template_name] if template_name != "" else templates["default"]

import xml.etree.ElementTree as tree

xournal = tree.Element("xournal", attrib={"creator": "Xournal++ 1.1.1", "fileversion": "4"})
title = tree.Element("title")
title.text = "Xournal++ document - see https://github.com/xournalpp/xournalpp"
xournal.append(title)
if pdf_path != "":
    assert number_of_pages != ""
    for i in range(int(number_of_pages)):
        page = tree.Element("page", attrib={"width": pdf_page_width, "height": pdf_page_height})
        background = tree.Element("background", attrib={"type": "pdf", "pageno": f"{i + 1}"})
        if i == 0:
            background.set("domain", "attach")
            background.set("filename", "background.pdf")
        page.append(background)
        xournal.append(page)
page = tree.Element("page", attrib={"width": template.width, "height": template.height})
page.append(tree.Element("background", attrib={"type": "solid", "color": a4.background_color, "style": a4.style}))
xournal.append(page)

xournal_tree = tree.ElementTree(xournal)
xournal_tree.write(file_path, xml_declaration=True)