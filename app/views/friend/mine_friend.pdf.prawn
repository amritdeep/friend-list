pdf.text @title


data = [["Name", "Address", "Email"], [@user]]

@friend.each do |item|
	pdf.text item.name
end  