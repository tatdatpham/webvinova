# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(email: 'dat@gmail.com', password: '202cb962ac59075b964b07152d234b70', fullname: 'Pham Tat Dat', birthday: '1993-01-01', phone: '03903029', status: '0')
users = User.create(email: 'hai@gmail.com', password: '202cb962ac59075b964b07152d234b70', fullname: 'Nguyen Duc Hai', birthday: '1993-04-01', phone: '0434034434', status: '0')
users = User.create(email: 'justin@gmail.com', password: '202cb962ac59075b964b07152d234b70', fullname: 'Nguyen Binh Dieu', birthday: '1990-02-01', phone: '083920293', status: '0')
users = User.create(email: 'admin@gmail.com', password: '202cb962ac59075b964b07152d234b70', fullname: 'Adminstrator', birthday: '1980-03-05', phone: '0302050295', status: '1')

posts = Post.create(title: 'Tìm thấy hộp đen vụ rơi máy bay ở Đài Loan', content: 'VOV.VN - Trong khi đó, các nhân viên điều tra vẫn đang tiếp tục làm việc tại hiện trường vụ tai nạn để làm rõ nguyên nhân.

Tờ Washington Post đưa tin, ngày 23/7, một chiếc máy bay chở 58 hành khách và thành viên phi hành đoàn đã bị rơi khi cố gắng hạ cánh trong điều kiện thời tiết không thuận lợi trên một hòn đảo tại Đài Loan khiến ít nhất 48 người thiệt mạng.


Hiện trường vụ rơi máy bay Đài Loan (Ảnh: AP)
Chiếc máy bay ATR-72 mang số hiệu GE222 của hãng hàng không TransAsia Airways bị rơi từ độ cao 28 m, trong điều kiện thời tiết mưa nặng hạt. Máy bay lao vào tòa nhà ở gần sân bay làm tòa nhà bị bay mất nóc.

Tân Hoa xã dẫn lời lãnh đạo của cơ quan Giao thông của Đài Loan cho biết, hiện đã tìm được một trong hai hộp đen của chiếc máy bay. Trong khi đó, các nhân viên điều tra vẫn đang tiếp tục làm việc tại hiện trường vụ tai nạn để làm rõ nguyên nhân.

Theo giới chức Đài Loan, trong số 58 hành khách trên chuyến bay GE222 có 4 em nhỏ và 4 thành viên phi hành đoàn, 2 hành khách mang quốc tịch Pháp. 10 người bị thương đang được cấp cứu tại bệnh viện.

Trước đó, theo thông tin ban đầu, có 51 người thiệt mạng trong vụ rơi máy bay nói trên. Tuy nhiên, Wen Chia-hung, phát ngôn viên của trung tâm ứng phó thiên tai Bành Hồ đã chính thức lên tiếng xác nhận số người thiệt mạng trong vụ tai nạn là 48.

Lãnh đạo Đài Loan Mã Anh Cửu cho biết: “Đây là một ngày đau thương đối với lịch sử hàng không Đài Loan”. 

Vụ việc chuyến bay GE222 gặp nạn được cho là vụ tai nạn hàng không gây tử vong đầu tiên ở Đài Loan kể từ 12 năm qua. Trong khi xuất hiện một số thông tin cho rằng, có thể chiếc máy bay gặp nạn vì thời tiết xấu do ảnh hưởng của báo Matmo. Tuy nhiên, một đại diện của cơ quan hàng không dân dụng Đài Loan khẳng định, thời tiết “đủ tốt” để máy bay có thể hạ cánh an toàn.

Đại diện của cơ quan này cũng cho biết, cơ trưởng trên chuyến bay GE222 là một phi công giàu kinh nghiệm với 22 năm trong nghề. Hiện hãng hàng không TransAsia Airways đã có hỗ trợ ban đầu cho mỗi gia đình nạn nhân khoảng 6.600 USD./.', sharewith: '0', view: '0', status: '-1', user_id: '1')
posts = Post.create(title: 'Indonesia: Những thách thức với Tổng thống đắc cử Jokowi', content: 'Ông Jokowi sẽ nhậm chức Tổng thống vào tháng 10 tới đây với nhiều thách thức ở phía trước.
Indonesia: Những thách thức với Tổng thống đắc cử Jokowi
Tổng thống vừa mới đắc cử Joko "Jokowi" Widodo. (Ảnh: AP)
Theo kết quả được Ủy ban bầu cử quốc gia công bố vào tối 23/7, ứng cử viên Joko Widodo đã đắc cử Tổng thống Indonesia với tỷ lệ ủng hộ 53,15%. Ông Jokowi sẽ nhậm chức Tổng thống vào tháng 10 tới đây với nhiều thách thức ở phía trước.
Thách thức lớn nhất của Tổng thống đắc cử Joko Widodo nằm ở Quốc hội. Mặc dù nắm quyền điều hành đất nước, nhưng các nghị sĩ trong liên minh Đảng ủng hộ ông Jokowi hiện nắm chưa được 50% số ghế trong Quốc hội. Điều này sẽ là một trở ngại cho ông Jokowi khi muốn các chính sách của mình được quốc hội thông qua.
Ông Andy Mukherjee, chuyên gia phân tích hãng Reuters cho biết: “Tất cả tùy thuộc liệu Jokowi có thể hội đủ các nghị sĩ ủng hộ ông ấy tại Quốc hội. Nếu như Golkar, Đảng lớn thứ hai ở Indonesia hiện đang ủng hộ ông Prabowo, chuyển sang ủng hộ Jokowi thì ông ấy sẽ có thêm sức mạnh”.
Tuy nhiên, vấn đề ngay trước mắt mà ông Jokowi và nội các mới sẽ phải giải quyết là tiến hành cắt giảm trợ cấp nhiên liệu, vốn làm thâm thủng ngân sách tới 20 tỷ USD mỗi năm. 
Giá xăng ở Indonesia khoảng 6500 Rp, tức là 13.000 VND. Người dân Indonesia đang hưởng giá xăng thấp nhất trên thế giới nhờ vào chính sách trợ giá nhiên liệu của Chính phủ.  Việc cắt giảm trợ giá xăng sẽ động chạm đến quyền lợi của người dân, tuy nhiên, hiện ngân sách đã thâm thủng quá nhiều và Indonesia không còn sự lựa chọn nào khác
Ông Anthony Nafte, chuyên gia kinh tế nói: “Vấn đề trợ giá nhiên liệu đã gây căng thẳng trong việc xem xét  tình trạng thâm hụt ngân sách tài chính gần đây và một số đề xuất hạn chế bán xăng trợ giá đã cho thấy rằng việc trợ giá xăng một lần nữa ngốn nhiều tiền từ ngân sách. Do đó mà giải quyết vấn đề trợ giá nhiên liệu là ưu tiên khẩn cấp hàng đầu”.
Anh Abianto, người dân Jakarta chia sẻ: “Tôi nghĩ Jokowi có thể làm được điều này bằng việc cắt giảm trợ cấp và tăng giá xăng và làm cho người dân Indonesia hiểu được sự cần thiết của vấn đề này. Việc cắt giảm trợ cấp xăng dần cần phải được Chính phủ mới thực thi. Tôi nghĩ Jokowi đang có động lực để làm điều này”.
Ông Joko Widodo với phong cách nói và làm, không  nhân nhượng với quan liêu và sẵn sàng gặp gỡ trực tiếp với thường dân đã khiến ông có được sự ủng hộ lớn trong dân chúng.  Người dân Indonesia tin tưởng và ủng hộ các chính sách của ông Jokowi trong nhiệm kỳ tơi.
Anh Alia Hakim, Sinh viên Đai học Tổng hợp Indonesia cho biết: “Nhóm cố vấn của ông Jokowi đã có kế hoạch từ trước khi ông ấy trở thành tổng thống. Do vậy, tôi sẽ ủng hộ các chính sách của Jokowi hơn là phản đổi”.
Theo kế hoạch, ông Jokowi sẽ nhậm chức Tổng thống vào ngày 20/10 tới đây và là Tổng thống thứ bảy của Indonesia.
- See more at: http://vtv.vn/Thoi-su-quoc-te/Indonesia-Nhung-thach-thuc-voi-Tong-thong-dac-cu-Jokowi/126225.vtv#sthash.8TwEWmpE.dpù', sharewith: '0', view: '0', status: '0', user_id: '1')
posts = Post.create(title: 'Hộp đen MH17 không bị can thiệp', content: 'Các nhà điều tra của Hà Lan cho hay dữ liệu trong hộp đen của chiếc máy bay bị bắn rơi MH17 vẫn còn nguyên vẹn và sẽ được phân tích vào hôm nay. 
Hộp đen MH17 sẽ được gửi tới Anh  /  Hộp đen MH17 được giao cho Malaysia
hop-den-5914-1406167333.jpg
Hai hộp đen của máy bay MH17 được phiến quân Ukraine bàn giao cho các nhà điều tra quốc tế. Ảnh: EPA
"Thiết bị ghi âm giọng nói buồng lái bị hư hỏng nhưng bộ nhớ vẫn còn nguyên vẹn. Không có bằng chứng hay dấu hiệu nào của sự can thiệp vào thiết bị đã được tìm thấy", AFP dẫn thông báo của Ủy ban An toàn Hà Lan (OVV) hôm qua. 

OVV đang dẫn đầu cuộc điều tra quốc tế về vụ việc máy bay của hãng Malaysia Airlines bị bắn rơi, làm 298 người gồm 193 người Hà Lan thiệt mạng. Cuộc điều tra có sự phối hợp với các nhóm chuyên gia từ 8 nước khác, trong đó có Nga.

Hiện hai hộp đen của MH17 được tìm thấy từ hiện trường ở đông Ukraine đã được bàn giao cho Chi nhánh Điều tra Tai nạn Hàng không (AAIB) ở Farnborough, tây nam London.

Các chuyên gia AAIB được giao nhiệm vụ lấy thông tin từ bộ phận ghi âm buồng lái, trong đó có cuộc trao đổi giữa các phi công, và nội dung của thiết bị ghi dữ liệu chuyến bay. "Dữ liệu ghi âm buồng lái đã được tải về thành công và chứa những thông tin giá trị về chuyến bay. Các dữ liệu phải được phân tích và điều tra thêm", OVV nói. Các chuyên gia đang bắt đầu phân tích thông tin từ các hộp đen.

Hôm 22/7, lực lượng ly khai Ukraine đang kiểm soát hiện trường đã bàn giao các hộp đen cho giới chức Malaysia. Theo phó thủ tướng Malaysia Tan Sri Muhyiddin Yassin, các phiến quân nhất trí với quyết định này một cách vô điều kiện và không đòi hỏi một ưu đãi nào. ', sharewith: '0', view: '0', status: '1', user_id: '1')
posts = Post.create(title: 'Ông Fidel Castro cho rằng: “Nga và Trung Quốc cần dẫn dắt trật tự thế giới mới”', content: '"Nga và Trung Quốc cần dẫn đầu thế giới mới này đảm bảo sự tồn tại của nhân loại, nếu trước đó chủ nghĩa đế quốc không gây ra cuộc chiến tranh hủy diệt tội lỗi", ông Fidel Castro viết trong bài báo.
Theo ông Castro, Nga và Trung Quốc có nhiều đóng góp cho khoa học, công nghệ và phát triển kinh tế của các quốc gia Nam Mỹ và Caribe.
Hôm thứ Tư trong chuyến thăm Cuba, Chủ tịch Trung Quốc Tập Cận Bình đã có cuộc gặp với ông Fidel Castro. 

Cuộc gặp diễn ra ngay sau chuyến thăm của Tổng thống Nga Vladimir Putin tới Cuba, nhà lãnh đạo Nga cũng đã hội kiến nhà lãnh đạo cách mạng Cuba. 

Trong bài viết của mình, ông Fidel Castro gọi cả hai chuyến thăm là sự kiện "lịch sử." 

Chuyến thăm của ông Putin và Tập Cận Bình đến Mỹ Latinh tăng cường quan hệ của Nga và Trung Quốc với khu vực này. 

Các ông Putin và Tập Cận Bình đã tham dự hội nghị thượng đỉnh BRICS tại Brazil. 

Hội nghị thượng đỉnh này kêu gọi các thành viên tìm cách giảm ảnh hưởng của Mỹ và EU trên trường quốc tế.', sharewith: '1', view: '0', status: '-1', user_id: '1')
posts = Post.create(title: 'Gaza: Chiến sự đẫm máu – thêm 81 người chết', content: 'Không ngoài mối quan ngại của cộng đồng quốc tế, tình hình chiến sự tại Dải Gaza hôm qua (23/7) tiếp tục diễn biến phức tạp và đã cướp đi mạng sống của ít nhất 78 người Palestine cùng 3 lính Israel.

Trong các thống kê công bố sáng sớm nay (24/7), các nguồn tin từ Gaza cho biết, ít nhất 76 người Palestine đã bị chết và khoảng 300 người khác bị thương trong các cuộc tấn công tổng lực bằng cả không quân, pháo binh và bộ binh của Israel vào dải Gaza trong vòng 24 giờ qua. Như vậy, đến thời điểm này, số thương vong về phía người Palestine kể từ đầu cuộc chiến hôm 8/7 đến nay lên gần 700 người chết và khoảng 4.500 người bị thương. Theo truyền hình tiếng Arab Aljazera, hầu hết các nạn nhân trong các cuộc tấn công của Israel hôm qua (23/7) tiếp tục là dân thường, gồm cả người già, phụ nữ và trẻ em. Trong đó, riêng cuộc đột kích bất ngờ hồi sáng qua của đặc nhiệm Israel vào thị trấn Khan Yunis phía nam Gaza, đã khiến hơn 10 thường dân thiệt mạng.

Về phần mình, quân đội Israel hôm qua (23/4) cũng xác nhận có thêm 3 binh sỹ thiệt mạng và hơn 30 binh sỹ khác bị thương trong các cuộc giao tranh mới nhất với người vũ trang Palestine ở Gaza.

Hy vọng một thỏa thuận ngừng bắn sớm được thực hiện để người dân Gaza bớt cảnh loạn lạc (Ảnh: AP)
Trong khi đó, trên bình diện chính trị, Phong trào Hồi giáo Hamas hôm qua (23/7) một lần nữa tuyên bố không chấp nhận ngừng bắn trước khi lệnh phong tỏa Gaza được dỡ bỏ. Phát biểu với báo giới tại thủ đô Doha của Qatar, Chủ tịch Phòng chính trị của Hamas Khaled Masha’al nêu rõ: “Toàn thể người dân Gaza đã giao trách nhiệm lãnh đạo cuộc đấu tranh phá vỡ vòng vây Gaza cho chúng tôi. Chúng tôi sẽ tận trung thực hiện ý nguyện của Gaza, quyết tâm phá vỡ lệnh phong tỏa. Cuộc đấu tranh sẽ tiếp diễn và chúng tôi có nhiều sự lựa chọn khác nhau để bảo vệ người dân của mình. Trong bất kỳ tình huống nào, chúng tôi cũng sẽ bảo vệ người dân, quyết tâm chiến đấu chống lại những kẻ chiếm đóng và phá vỡ vòng vây cho Gaza”.
Tuyên bố của người đứng đầu Hamas đưa ra trong bối cảnh Ngoại trưởng Mỹ John Kerry đang tích cực vận động thực thi một lệnh ngừng bắn tại Gaza theo sáng kiến của Ai Cập. Chiều qua (23/7), ông Kerry đã rời Israel để tới Ai Cập mà không đưa ra bất kỳ một tuyên bố nào về kết quả các cuộc thảo luận với giới chức Israel. Theo kế hoạch, ông Kerry sẽ tiến hành một loạt các cuộc gặp gỡ và thảo luận với giới chức Ai Cập về việc thúc đẩy thỏa thuận ngừng bắn, ngay khi tới Cairo.  

Còn tại Israel, một số nguồn tin nói rằng, Israel đang cân nhắc khả năng đơn phương tuyên bố ngừng bắn và rút quân khỏi Gaza trong ít ngày tới, tương tự như động thái trong cuộc chiến mang tên “Đổ chì” hồi mùa đông 2008 - 2009. Theo Aljazera, nhà phân tích quân sự nổi tiếng của Nhật báo Yedioth Ahronoth của Israel Nahum Barnea nói rằng, trong vài ngày tới, Nội các an ninh Israel có thể sẽ ra quyết định rút quân khỏi Gaza sau khi hoàn tất việc phá hủy các đường hầm của các tay súng Palestine ở đây.

Tuy nhiên, chính giới Israel chưa xác nhận thông tin này./.  ', sharewith: '1', view: '0', status: '0', user_id: '1')
posts = Post.create(title: 'Trung Quốc rình chờ chờ cơ hội kết thúc “bá quyền” của Hải quân Mỹ', content: 'Báo chí Canada gần đây có đăng bài viết của tác giả Matthew Fischer. Bài viết cho rằng, đối với Trung Quốc, đến nay không có việc gì quan trọng hơn là kết thúc vị thế bá chủ của Hải quân Mỹ.

Vì vậy, sau khi xảy ra cuộc đụng độ nguy hiểm cao giữa 1 tàu chiến Trung Quốc và 1 tàu tuần dương Mỹ (giám sát tàu sân bay Liêu Ninh Trung Quốc chạy thử ở Biển Đông cuối năm 2013), 2 tàu chiến Trung Quốc (tàu khu trục và tàu hộ vệ thuộc Hạm đội Nam Hải), 1 tàu tiếp tế và 1 tàu bệnh viện xuất hiện ở vùng biển Hawaii, gây tranh cãi cho binh sĩ hải quân nhiều nước trên thế giới.

Theo bài báo, trước đây, Hải quân Trung Quốc chưa từng được mời tham gia diễn tập quân sự Vành đai Thái Bình Dương. Hiện nay, trong thời gian diễn tập của hơn 50 tàu chiến đến từ 22 quốc gia (gồm có Canada), tàu chiến Trung Quốc ở lại vùng biển Hawaii gần 1 tháng. Thiếu tướng Pat Hall, người chỉ huy cụm chiến đấu tàu sân bay thứ 9, cho rằng, đây là cơ hội rất tốt để tìm hiểu hoạt động như thế nào của nhau.


Máy bay trên tàu sân bay USS Ronal Reagan, Hải quân Mỹ
Cùng với việc "siêu cường mới nổi" thử quyết tâm của siêu cường cũ, nhiều hiểu  nhầm hơn có thể xuất hiện.

Mục tiêu của Trung Quốc là xây dựng một lực lượng hải quân tầm xa. Đến năm 2020, Hải quân Trung Quốc sẽ sở hữu tàu sân bay do Liên Xô chế tạo (tàu sân bay Liêu Ninh), 2 tàu sân bay nội địa và hơn 120 tàu chiến mặt nước và tàu ngầm.

Trung Quốc ra sức chế tạo tàu chiến nhằm hỗ trợ cho yêu sách chủ quyền (phi pháp) của Bắc Kinh ở các vùng biển Tây Thái Bình Dương giàu trữ lượng dầu khí, tạo ra hậu thuẫn về thực lực cho các tuyến đường biển xa xôi mà phần lớn xuất nhập khẩu của Trung Quốc phải lệ thuộc.

Trong nhiều năm qua, Hải quân Mỹ luôn tận dụng nhiều tàu sân bay của họ để tiến hành ngoại giao pháo hạm và thế tấn công ma lực. Trong thời gian diễn tập quân sự Vành đai Thái Bình Dương, một loại chiến lược được triển khai toàn diện.


Tàu bệnh viện USNS Mercy (T-AH 19) Mỹ
Thiếu tướng Hall trả lời phỏng vấn cho rằng, chương trình thời sự của họ thường có vài trăm triệu người xem.

Nhóm truyền hình Trung Quốc cũng đã phỏng vấn các thủy thủ của cơ quan bảo trì máy bay dưới boong tàu (quân đội Mỹ), chụp vài máy bay chiến đấu Super Hornet Hải quân Mỹ cất cánh, có vài người còn cảm thấy kinh ngạc về cáp hãm đà khi quay trở về địa điểm xuất phát của máy bay chiến đấu.

Cách làm của Hải quân Mỹ tạo ra sự so sánh rõ rệt với phương thức ứng xử với truyền thông phương Tây của Hải quân Mỹ. Người Trung Quốc chỉ cho phép truyền thông phương Tây lên tàu bệnh viện Hòa bình Phương Châu.

Câu hỏi dành cho các quân y và y tá Trung Quốc cũng phải đặt trước. Hơn nữa, họ kiên trì cho biết có quyền gạt bỏ trước khi đăng tải hoặc phát thanh.

Khi được phóng viên tờ "Aviation Week" Mỹ hỏi, chỉ huy biên đội tàu chiến Trung Quốc cho biết, trong tương lai Trung Quốc sẽ cùng hải quân nước khác thực hiện nhiều nhiệm vụ và diễn tập hơn. Hải quân Mỹ, Canada nhất trí cho rằng, Hải quân Trung Quốc tham gia diễn tập quân sự ở Hawaii là một thành công to lớn.', sharewith: '1', view: '0', status: '1', user_id: '1')


comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '1', post_id: '1')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '1', post_id: '1')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '1', post_id: '2')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '1', post_id: '2')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '1', post_id: '3')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '1', post_id: '3')

comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '1')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '1')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '2')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '2')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '3')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '3')

comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '4')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '4')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '5')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '5')
comments = Comment.create(content: 'This is the first comment', status: '1', user_id: '2', post_id: '6')
comments = Comment.create(content: 'This is the second comment', status: '1', user_id: '2', post_id: '6')

posts = Post.create(title: 'Tìm thấy hộp đen vụ rơi máy bay ở Đài Loan', content: 'VOV.VN - Trong khi đó, các nhân viên điều tra vẫn đang tiếp tục làm việc tại hiện trường vụ tai nạn để làm rõ nguyên nhân.

Tờ Washington Post đưa tin, ngày 23/7, một chiếc máy bay chở 58 hành khách và thành viên phi hành đoàn đã bị rơi khi cố gắng hạ cánh trong điều kiện thời tiết không thuận lợi trên một hòn đảo tại Đài Loan khiến ít nhất 48 người thiệt mạng.


Hiện trường vụ rơi máy bay Đài Loan (Ảnh: AP)
Chiếc máy bay ATR-72 mang số hiệu GE222 của hãng hàng không TransAsia Airways bị rơi từ độ cao 28 m, trong điều kiện thời tiết mưa nặng hạt. Máy bay lao vào tòa nhà ở gần sân bay làm tòa nhà bị bay mất nóc.

Tân Hoa xã dẫn lời lãnh đạo của cơ quan Giao thông của Đài Loan cho biết, hiện đã tìm được một trong hai hộp đen của chiếc máy bay. Trong khi đó, các nhân viên điều tra vẫn đang tiếp tục làm việc tại hiện trường vụ tai nạn để làm rõ nguyên nhân.

Theo giới chức Đài Loan, trong số 58 hành khách trên chuyến bay GE222 có 4 em nhỏ và 4 thành viên phi hành đoàn, 2 hành khách mang quốc tịch Pháp. 10 người bị thương đang được cấp cứu tại bệnh viện.

Trước đó, theo thông tin ban đầu, có 51 người thiệt mạng trong vụ rơi máy bay nói trên. Tuy nhiên, Wen Chia-hung, phát ngôn viên của trung tâm ứng phó thiên tai Bành Hồ đã chính thức lên tiếng xác nhận số người thiệt mạng trong vụ tai nạn là 48.

Lãnh đạo Đài Loan Mã Anh Cửu cho biết: “Đây là một ngày đau thương đối với lịch sử hàng không Đài Loan”. 

Vụ việc chuyến bay GE222 gặp nạn được cho là vụ tai nạn hàng không gây tử vong đầu tiên ở Đài Loan kể từ 12 năm qua. Trong khi xuất hiện một số thông tin cho rằng, có thể chiếc máy bay gặp nạn vì thời tiết xấu do ảnh hưởng của báo Matmo. Tuy nhiên, một đại diện của cơ quan hàng không dân dụng Đài Loan khẳng định, thời tiết “đủ tốt” để máy bay có thể hạ cánh an toàn.

Đại diện của cơ quan này cũng cho biết, cơ trưởng trên chuyến bay GE222 là một phi công giàu kinh nghiệm với 22 năm trong nghề. Hiện hãng hàng không TransAsia Airways đã có hỗ trợ ban đầu cho mỗi gia đình nạn nhân khoảng 6.600 USD./.', sharewith: '0', view: '0', status: '-1', user_id: '2')
posts = Post.create(title: 'Indonesia: Những thách thức với Tổng thống đắc cử Jokowi', content: 'Ông Jokowi sẽ nhậm chức Tổng thống vào tháng 10 tới đây với nhiều thách thức ở phía trước.
Indonesia: Những thách thức với Tổng thống đắc cử Jokowi
Tổng thống vừa mới đắc cử Joko "Jokowi" Widodo. (Ảnh: AP)
Theo kết quả được Ủy ban bầu cử quốc gia công bố vào tối 23/7, ứng cử viên Joko Widodo đã đắc cử Tổng thống Indonesia với tỷ lệ ủng hộ 53,15%. Ông Jokowi sẽ nhậm chức Tổng thống vào tháng 10 tới đây với nhiều thách thức ở phía trước.
Thách thức lớn nhất của Tổng thống đắc cử Joko Widodo nằm ở Quốc hội. Mặc dù nắm quyền điều hành đất nước, nhưng các nghị sĩ trong liên minh Đảng ủng hộ ông Jokowi hiện nắm chưa được 50% số ghế trong Quốc hội. Điều này sẽ là một trở ngại cho ông Jokowi khi muốn các chính sách của mình được quốc hội thông qua.
Ông Andy Mukherjee, chuyên gia phân tích hãng Reuters cho biết: “Tất cả tùy thuộc liệu Jokowi có thể hội đủ các nghị sĩ ủng hộ ông ấy tại Quốc hội. Nếu như Golkar, Đảng lớn thứ hai ở Indonesia hiện đang ủng hộ ông Prabowo, chuyển sang ủng hộ Jokowi thì ông ấy sẽ có thêm sức mạnh”.
Tuy nhiên, vấn đề ngay trước mắt mà ông Jokowi và nội các mới sẽ phải giải quyết là tiến hành cắt giảm trợ cấp nhiên liệu, vốn làm thâm thủng ngân sách tới 20 tỷ USD mỗi năm. 
Giá xăng ở Indonesia khoảng 6500 Rp, tức là 13.000 VND. Người dân Indonesia đang hưởng giá xăng thấp nhất trên thế giới nhờ vào chính sách trợ giá nhiên liệu của Chính phủ.  Việc cắt giảm trợ giá xăng sẽ động chạm đến quyền lợi của người dân, tuy nhiên, hiện ngân sách đã thâm thủng quá nhiều và Indonesia không còn sự lựa chọn nào khác
Ông Anthony Nafte, chuyên gia kinh tế nói: “Vấn đề trợ giá nhiên liệu đã gây căng thẳng trong việc xem xét  tình trạng thâm hụt ngân sách tài chính gần đây và một số đề xuất hạn chế bán xăng trợ giá đã cho thấy rằng việc trợ giá xăng một lần nữa ngốn nhiều tiền từ ngân sách. Do đó mà giải quyết vấn đề trợ giá nhiên liệu là ưu tiên khẩn cấp hàng đầu”.
Anh Abianto, người dân Jakarta chia sẻ: “Tôi nghĩ Jokowi có thể làm được điều này bằng việc cắt giảm trợ cấp và tăng giá xăng và làm cho người dân Indonesia hiểu được sự cần thiết của vấn đề này. Việc cắt giảm trợ cấp xăng dần cần phải được Chính phủ mới thực thi. Tôi nghĩ Jokowi đang có động lực để làm điều này”.
Ông Joko Widodo với phong cách nói và làm, không  nhân nhượng với quan liêu và sẵn sàng gặp gỡ trực tiếp với thường dân đã khiến ông có được sự ủng hộ lớn trong dân chúng.  Người dân Indonesia tin tưởng và ủng hộ các chính sách của ông Jokowi trong nhiệm kỳ tơi.
Anh Alia Hakim, Sinh viên Đai học Tổng hợp Indonesia cho biết: “Nhóm cố vấn của ông Jokowi đã có kế hoạch từ trước khi ông ấy trở thành tổng thống. Do vậy, tôi sẽ ủng hộ các chính sách của Jokowi hơn là phản đổi”.
Theo kế hoạch, ông Jokowi sẽ nhậm chức Tổng thống vào ngày 20/10 tới đây và là Tổng thống thứ bảy của Indonesia.
- See more at: http://vtv.vn/Thoi-su-quoc-te/Indonesia-Nhung-thach-thuc-voi-Tong-thong-dac-cu-Jokowi/126225.vtv#sthash.8TwEWmpE.dpù', sharewith: '0', view: '0', status: '0', user_id: '2')
posts = Post.create(title: 'Hộp đen MH17 không bị can thiệp', content: 'Các nhà điều tra của Hà Lan cho hay dữ liệu trong hộp đen của chiếc máy bay bị bắn rơi MH17 vẫn còn nguyên vẹn và sẽ được phân tích vào hôm nay. 
Hộp đen MH17 sẽ được gửi tới Anh  /  Hộp đen MH17 được giao cho Malaysia
hop-den-5914-1406167333.jpg
Hai hộp đen của máy bay MH17 được phiến quân Ukraine bàn giao cho các nhà điều tra quốc tế. Ảnh: EPA
"Thiết bị ghi âm giọng nói buồng lái bị hư hỏng nhưng bộ nhớ vẫn còn nguyên vẹn. Không có bằng chứng hay dấu hiệu nào của sự can thiệp vào thiết bị đã được tìm thấy", AFP dẫn thông báo của Ủy ban An toàn Hà Lan (OVV) hôm qua. 

OVV đang dẫn đầu cuộc điều tra quốc tế về vụ việc máy bay của hãng Malaysia Airlines bị bắn rơi, làm 298 người gồm 193 người Hà Lan thiệt mạng. Cuộc điều tra có sự phối hợp với các nhóm chuyên gia từ 8 nước khác, trong đó có Nga.

Hiện hai hộp đen của MH17 được tìm thấy từ hiện trường ở đông Ukraine đã được bàn giao cho Chi nhánh Điều tra Tai nạn Hàng không (AAIB) ở Farnborough, tây nam London.

Các chuyên gia AAIB được giao nhiệm vụ lấy thông tin từ bộ phận ghi âm buồng lái, trong đó có cuộc trao đổi giữa các phi công, và nội dung của thiết bị ghi dữ liệu chuyến bay. "Dữ liệu ghi âm buồng lái đã được tải về thành công và chứa những thông tin giá trị về chuyến bay. Các dữ liệu phải được phân tích và điều tra thêm", OVV nói. Các chuyên gia đang bắt đầu phân tích thông tin từ các hộp đen.

Hôm 22/7, lực lượng ly khai Ukraine đang kiểm soát hiện trường đã bàn giao các hộp đen cho giới chức Malaysia. Theo phó thủ tướng Malaysia Tan Sri Muhyiddin Yassin, các phiến quân nhất trí với quyết định này một cách vô điều kiện và không đòi hỏi một ưu đãi nào. ', sharewith: '0', view: '0', status: '1', user_id: '2')
posts = Post.create(title: 'Ông Fidel Castro cho rằng: “Nga và Trung Quốc cần dẫn dắt trật tự thế giới mới”', content: '"Nga và Trung Quốc cần dẫn đầu thế giới mới này đảm bảo sự tồn tại của nhân loại, nếu trước đó chủ nghĩa đế quốc không gây ra cuộc chiến tranh hủy diệt tội lỗi", ông Fidel Castro viết trong bài báo.
Theo ông Castro, Nga và Trung Quốc có nhiều đóng góp cho khoa học, công nghệ và phát triển kinh tế của các quốc gia Nam Mỹ và Caribe.
Hôm thứ Tư trong chuyến thăm Cuba, Chủ tịch Trung Quốc Tập Cận Bình đã có cuộc gặp với ông Fidel Castro. 

Cuộc gặp diễn ra ngay sau chuyến thăm của Tổng thống Nga Vladimir Putin tới Cuba, nhà lãnh đạo Nga cũng đã hội kiến nhà lãnh đạo cách mạng Cuba. 

Trong bài viết của mình, ông Fidel Castro gọi cả hai chuyến thăm là sự kiện "lịch sử." 

Chuyến thăm của ông Putin và Tập Cận Bình đến Mỹ Latinh tăng cường quan hệ của Nga và Trung Quốc với khu vực này. 

Các ông Putin và Tập Cận Bình đã tham dự hội nghị thượng đỉnh BRICS tại Brazil. 

Hội nghị thượng đỉnh này kêu gọi các thành viên tìm cách giảm ảnh hưởng của Mỹ và EU trên trường quốc tế.', sharewith: '1', view: '0', status: '-1', user_id: '2')
posts = Post.create(title: 'Gaza: Chiến sự đẫm máu – thêm 81 người chết', content: 'Không ngoài mối quan ngại của cộng đồng quốc tế, tình hình chiến sự tại Dải Gaza hôm qua (23/7) tiếp tục diễn biến phức tạp và đã cướp đi mạng sống của ít nhất 78 người Palestine cùng 3 lính Israel.

Trong các thống kê công bố sáng sớm nay (24/7), các nguồn tin từ Gaza cho biết, ít nhất 76 người Palestine đã bị chết và khoảng 300 người khác bị thương trong các cuộc tấn công tổng lực bằng cả không quân, pháo binh và bộ binh của Israel vào dải Gaza trong vòng 24 giờ qua. Như vậy, đến thời điểm này, số thương vong về phía người Palestine kể từ đầu cuộc chiến hôm 8/7 đến nay lên gần 700 người chết và khoảng 4.500 người bị thương. Theo truyền hình tiếng Arab Aljazera, hầu hết các nạn nhân trong các cuộc tấn công của Israel hôm qua (23/7) tiếp tục là dân thường, gồm cả người già, phụ nữ và trẻ em. Trong đó, riêng cuộc đột kích bất ngờ hồi sáng qua của đặc nhiệm Israel vào thị trấn Khan Yunis phía nam Gaza, đã khiến hơn 10 thường dân thiệt mạng.

Về phần mình, quân đội Israel hôm qua (23/4) cũng xác nhận có thêm 3 binh sỹ thiệt mạng và hơn 30 binh sỹ khác bị thương trong các cuộc giao tranh mới nhất với người vũ trang Palestine ở Gaza.

Hy vọng một thỏa thuận ngừng bắn sớm được thực hiện để người dân Gaza bớt cảnh loạn lạc (Ảnh: AP)
Trong khi đó, trên bình diện chính trị, Phong trào Hồi giáo Hamas hôm qua (23/7) một lần nữa tuyên bố không chấp nhận ngừng bắn trước khi lệnh phong tỏa Gaza được dỡ bỏ. Phát biểu với báo giới tại thủ đô Doha của Qatar, Chủ tịch Phòng chính trị của Hamas Khaled Masha’al nêu rõ: “Toàn thể người dân Gaza đã giao trách nhiệm lãnh đạo cuộc đấu tranh phá vỡ vòng vây Gaza cho chúng tôi. Chúng tôi sẽ tận trung thực hiện ý nguyện của Gaza, quyết tâm phá vỡ lệnh phong tỏa. Cuộc đấu tranh sẽ tiếp diễn và chúng tôi có nhiều sự lựa chọn khác nhau để bảo vệ người dân của mình. Trong bất kỳ tình huống nào, chúng tôi cũng sẽ bảo vệ người dân, quyết tâm chiến đấu chống lại những kẻ chiếm đóng và phá vỡ vòng vây cho Gaza”.
Tuyên bố của người đứng đầu Hamas đưa ra trong bối cảnh Ngoại trưởng Mỹ John Kerry đang tích cực vận động thực thi một lệnh ngừng bắn tại Gaza theo sáng kiến của Ai Cập. Chiều qua (23/7), ông Kerry đã rời Israel để tới Ai Cập mà không đưa ra bất kỳ một tuyên bố nào về kết quả các cuộc thảo luận với giới chức Israel. Theo kế hoạch, ông Kerry sẽ tiến hành một loạt các cuộc gặp gỡ và thảo luận với giới chức Ai Cập về việc thúc đẩy thỏa thuận ngừng bắn, ngay khi tới Cairo.  

Còn tại Israel, một số nguồn tin nói rằng, Israel đang cân nhắc khả năng đơn phương tuyên bố ngừng bắn và rút quân khỏi Gaza trong ít ngày tới, tương tự như động thái trong cuộc chiến mang tên “Đổ chì” hồi mùa đông 2008 - 2009. Theo Aljazera, nhà phân tích quân sự nổi tiếng của Nhật báo Yedioth Ahronoth của Israel Nahum Barnea nói rằng, trong vài ngày tới, Nội các an ninh Israel có thể sẽ ra quyết định rút quân khỏi Gaza sau khi hoàn tất việc phá hủy các đường hầm của các tay súng Palestine ở đây.

Tuy nhiên, chính giới Israel chưa xác nhận thông tin này./.  ', sharewith: '1', view: '0', status: '0', user_id: '2')
posts = Post.create(title: 'Trung Quốc rình chờ chờ cơ hội kết thúc “bá quyền” của Hải quân Mỹ', content: 'Báo chí Canada gần đây có đăng bài viết của tác giả Matthew Fischer. Bài viết cho rằng, đối với Trung Quốc, đến nay không có việc gì quan trọng hơn là kết thúc vị thế bá chủ của Hải quân Mỹ.

Vì vậy, sau khi xảy ra cuộc đụng độ nguy hiểm cao giữa 1 tàu chiến Trung Quốc và 1 tàu tuần dương Mỹ (giám sát tàu sân bay Liêu Ninh Trung Quốc chạy thử ở Biển Đông cuối năm 2013), 2 tàu chiến Trung Quốc (tàu khu trục và tàu hộ vệ thuộc Hạm đội Nam Hải), 1 tàu tiếp tế và 1 tàu bệnh viện xuất hiện ở vùng biển Hawaii, gây tranh cãi cho binh sĩ hải quân nhiều nước trên thế giới.

Theo bài báo, trước đây, Hải quân Trung Quốc chưa từng được mời tham gia diễn tập quân sự Vành đai Thái Bình Dương. Hiện nay, trong thời gian diễn tập của hơn 50 tàu chiến đến từ 22 quốc gia (gồm có Canada), tàu chiến Trung Quốc ở lại vùng biển Hawaii gần 1 tháng. Thiếu tướng Pat Hall, người chỉ huy cụm chiến đấu tàu sân bay thứ 9, cho rằng, đây là cơ hội rất tốt để tìm hiểu hoạt động như thế nào của nhau.


Máy bay trên tàu sân bay USS Ronal Reagan, Hải quân Mỹ
Cùng với việc "siêu cường mới nổi" thử quyết tâm của siêu cường cũ, nhiều hiểu  nhầm hơn có thể xuất hiện.

Mục tiêu của Trung Quốc là xây dựng một lực lượng hải quân tầm xa. Đến năm 2020, Hải quân Trung Quốc sẽ sở hữu tàu sân bay do Liên Xô chế tạo (tàu sân bay Liêu Ninh), 2 tàu sân bay nội địa và hơn 120 tàu chiến mặt nước và tàu ngầm.

Trung Quốc ra sức chế tạo tàu chiến nhằm hỗ trợ cho yêu sách chủ quyền (phi pháp) của Bắc Kinh ở các vùng biển Tây Thái Bình Dương giàu trữ lượng dầu khí, tạo ra hậu thuẫn về thực lực cho các tuyến đường biển xa xôi mà phần lớn xuất nhập khẩu của Trung Quốc phải lệ thuộc.

Trong nhiều năm qua, Hải quân Mỹ luôn tận dụng nhiều tàu sân bay của họ để tiến hành ngoại giao pháo hạm và thế tấn công ma lực. Trong thời gian diễn tập quân sự Vành đai Thái Bình Dương, một loại chiến lược được triển khai toàn diện.


Tàu bệnh viện USNS Mercy (T-AH 19) Mỹ
Thiếu tướng Hall trả lời phỏng vấn cho rằng, chương trình thời sự của họ thường có vài trăm triệu người xem.

Nhóm truyền hình Trung Quốc cũng đã phỏng vấn các thủy thủ của cơ quan bảo trì máy bay dưới boong tàu (quân đội Mỹ), chụp vài máy bay chiến đấu Super Hornet Hải quân Mỹ cất cánh, có vài người còn cảm thấy kinh ngạc về cáp hãm đà khi quay trở về địa điểm xuất phát của máy bay chiến đấu.

Cách làm của Hải quân Mỹ tạo ra sự so sánh rõ rệt với phương thức ứng xử với truyền thông phương Tây của Hải quân Mỹ. Người Trung Quốc chỉ cho phép truyền thông phương Tây lên tàu bệnh viện Hòa bình Phương Châu.

Câu hỏi dành cho các quân y và y tá Trung Quốc cũng phải đặt trước. Hơn nữa, họ kiên trì cho biết có quyền gạt bỏ trước khi đăng tải hoặc phát thanh.

Khi được phóng viên tờ "Aviation Week" Mỹ hỏi, chỉ huy biên đội tàu chiến Trung Quốc cho biết, trong tương lai Trung Quốc sẽ cùng hải quân nước khác thực hiện nhiều nhiệm vụ và diễn tập hơn. Hải quân Mỹ, Canada nhất trí cho rằng, Hải quân Trung Quốc tham gia diễn tập quân sự ở Hawaii là một thành công to lớn.', sharewith: '1', view: '0', status: '1', user_id: '2')

