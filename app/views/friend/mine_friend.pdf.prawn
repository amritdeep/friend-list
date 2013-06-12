pdf.text @title

friends = @friend.map do |friend|
	[
		friend.name,
		friend.address,
		friend.email
	]
end  

pdf.table friends