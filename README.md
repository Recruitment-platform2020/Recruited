内容评级平台



1.简介

简介：在线求职平台是一个 Web 应用程序，用户和公司可在该平台进行交互。在此平台上，用户可以创建、填写或上传简历，检索不同的工作，并申请感兴趣的工作。此外，公司可以创建不同的工作需求。该项目旨在开发一个应用程序，使得公司可以提供他们的需求，用户可以申请工作。	


2.项目技术选型

数据库：MySQL
核心框架/技术：
 Spring+SpringMvc+Hibernate
IDE: Eclipse
前端技术： HTML5，JavaScript, CSS, JQuery
数据量大的查询添加数据分页功能
在所有需要发送异步请求的功能里使用Ajax


3.数据字典设计

序号	表名	说明
1	用户注册表	存储用户的账户和密码等信息
2	简历信息表（个人、教育、工作）	存储简历中的个人基本信息
3	公司信息表	存储公司的详细信息
4	招聘人员注册信息表	存储招聘人员账户和密码等信息
5	工作职位要求表	存储发布的职位描述
6	平台管理员注册表	存储平台管理员账户和密码等信息
　
用户注册表(Users)				
字段名	数据类型	是否为空	默认值	说明
Uname	varchar(30)	not null	　	用户昵称，主键
Upic	varchar(100)	　	　	用户头像
Utel	char(11)	not null	　	用户手机号
Uemail	varchar(30)	not null	　	用户电子邮箱地址
Ubirth	date	not null	　	用户出生日期
Ugender	char(2)	not null	　	用户性别
Upwd	varchar(20)	not null	　	用户密码
				
简历信息表(Resume)				
字段名	数据类型	是否为空	默认值	说明
rid	int	not null	　	简历编号，主键，自动增长
Uname	varchar（30）	not null	　	账号姓名
ppic	varchar(100)	not null	　	个人简历照片
pname	varchar(20)	not null	　	个人姓名
pgender	char(2)	not null	　	个人性别
pbirth	date	not null	　	个人出生日期
pemail	varchar(20)	not null	　	个人电子邮箱地址
country	varchar(30)	not null	　	国籍
nation	varchar(20)	not null	　	民族
location	varchar(30)	not null	　	所在地
marriage	char(6)	not null	　	婚否
education	varchar(20)	not null	　	个人学历（大专，本科，研究生……）
school	varchar(20)	not null	　	毕业院校（学生选择就读学校）
gtime	date	not null	　	毕业时间（学生选择将要毕业的时间）
majora	varchar（30）	not null	　	所学专业
majorb	varchar（30）	　	　	所修二专
honor	varchar（100）	　	　	大学所获得的荣誉奖项
course	varchar（200）	　	　	大学主要课程
workyear	int	not null	　	工作年限
workdetail	varchar(200)	　	　	工作经验（曾任职公司、职位等）
advantage	varchar(200)	　	　	个人优势
skillcertificates	varchar(200)	　	　	技能证书
salary	varchar(20)	not null	　	薪资要求
jobinten	varchar(50)	not null	　	工作意向（职位要求）
Jid	int	not null	　	求职工作编号
Atime	datatime	　	　	求职时间
Areason	varchar(50)	　	　	被拒绝原因
Astatus	char(6)	　	　	申请状态
other	varchar(400)	　	　	补充信息
				
招聘人员注册信息表( Recruiter)				
字段名	数据类型	是否为空	默认值	说明
Rname	varchar(30)	not null	　	招聘人员名字（主键）
Rpic	varchar(100)	　	　	招聘人员头像
Rtel	char(11)	not null	　	招聘人员手机号码
Remail	varchar(30)	not null	　	招聘人员邮箱
Rbirth	date	not null	　	招聘人员出生日期
Rgender	char(2)	not null	　	招聘者性别
Fname	varchar(20)	not null	　	招聘人员所属公司（外键 连接公司表）
Rposition	varchar(20)	not null	　	职务
Rpwd	varchar(20)	not null	　	密码
Rstatus	char(10)	　	未审核	注册状态（0表示待审核或失败，1代表注册成功）
Rreason	varchar(100)	　	　	注册失败的理由
				
公司信息表(Factory)				
字段名	数据类型	是否为空	默认值	说明
Fname	varchar(20)	not null	　	公司名字（主键）
Fenglish	varchar(20)	not null	　	公司英文名字
Fintroduction	varchar(300)	not null	　	公司简介
Fscale	varchar(20)	not null	　	公司规模
Ftype	varchar(20)	not null	　	公司类型
Ftrade	varchar(20)	not null	　	所属行业
				
工作职位要求表（JobRequire)	（由招聘人员发布）			
字段名	数据类型	是否为空	默认值	说明
Jid	int	not null	　	职位id（主键）
Jname	varchar(20)	not null	　	职位名称
Rname	varchar(30)	not null	　	发布工作的招聘者姓名(外键 连接招聘人员)
Jtype	varchar(20)	　	　	工作类型
Jdescription	varchar(200)	not null	　	职位描述
Jnumber	int	not null	　	招聘人数
Jedu	varchar(20)	　	　	学历要求
Jexperience	varchar(50)	　	　	工作经验要求
				
平台管理员注册表(Manager）				
字段名	数据类型	是否为空	默认值	说明
Mname	varchar(30)	not null	　	管理员,主键
Mpwd	varchar(20)	not null	　	管理员密码
Mgender	char(2)	　	　	管理员性别
Mbirth	date	　	　	管理员生日
Memail	varchar(30)	not null	　	管理员邮箱
Mtel	char(11)	not null	　	管理员手机号

4.角色
1) 普通用户 
2) 管理员 
3) 公司招聘人员
5.功能需求
5.1.用户功能
1)用户注册
用户需要在注册表单中输入要求的详细信息才能注册成功。 
用户信息需包括：昵称（唯一）、头像、手机、电子邮件地址、出生日期、性别、密码等、密码需要用MD5加密并保存在数据库中。
2)用户登录
已注册用户可以通过输入其昵称、手机或电子邮件地址登录系统。  
3)检索工作
登录后，用户可以选择工作大类，如信息技术、制造、服务等，大类别下又包含子类
别，如软件服务、网络服务、云计算等，每个子类别下有不同的工作。 
用户可以基于不同的条件检索感兴趣的工作，如按工作地点、按技能要求、按照职位、按照公司、按照类别，以及查看所有工作等。 
游客用户可以检索工作，但是需要注册为正式用户后方能申请工作。
4)创建简历
用户可以在个人资料中创建简历、然后填写或上传简历。
5)工作提醒
工作提醒– 用户可以为特定工作设置工作提醒，以提示工作申请进度，如工作申请有没有回复，已经录取还是拒绝等，可以以邮件或平台内消息的形式发送提醒给用户。
6)查看求职记录
用户可以查看自己的所有工作申请记录，跟进工作申请进度，也可在工作申请没有完成前取消工作申请，但是需要注明取消原因，这样在招聘人员的界面中可以看到用户已取消申请，并显示原因。用户可以对请求记录进行筛选和排序，如根据进度（通过/拒绝/处理中等）、申请时间等。
5.2.招聘人员功能
1)招聘人员注册
招聘人员需要在注册表单中输入要求的详细信息才能注册。 
招聘人员信息包括：昵称（唯一）、头像、手机、电子邮件地址、出生日期（可选）、性别、所属公司、职务、密码等、密码需要用MD5加密并保存在数据库中。 
招聘人员注册的同时需要提供公司详细信息，包括公司名称、英文全称、公司简介、规模、公司类型、所属行业等。 
招聘人员注册后需要平台管理员审核后方可进行登录。审核通过后招聘人员会收到邮
件信息。
2)招聘人员登录
注册招聘人员可以通过输入昵称、手机或电子邮件地址登录系统。 
招聘人员可以填写或上传职位描述，并可以创建一个包含所有信息的新工作，如职位描述、招聘人数、学历要求、工作经验要求等等。 
招聘人员可以随时更新职位需求。
3)查看工作申请
招聘人员可以查看发布的所有工作的列表，点击某个工作可以查看该工作的求职者申请详情，包括目前申请总人数，申请人列表，点击某个申请人可以查看其具体信息和简历。并可以针对申请人进行操作，如通过其申请或拒绝其申请。申请人列表按照申请时间升序排序。
5.3.平台管理员功能
1)平台管理员登录 
平台管理员的账户只能由现有平台管理员创建然后共享给其他管理员使用。 
2)审核和管理招聘人员注册 
平台管理员可以查看招聘人员注册列表，点击某个招聘人员可以查看其详细信息和关
联的公司的信息。并对注册列表中的招聘人员申请进行审核，选择通过注册申请还是拒绝，
如果拒绝，需要填写拒绝理由（也可设置一个消息列表快速选择理由或自己填写理由），
这样招聘人员可以收到邮件，关于注册通过还是被拒绝。 
平台管理员有权限编辑和删除招聘人员信息。 
3)管理用户 
平台管理员可以查看注册用户列表，或根据一定条件检索用户，如用户昵称、手机号、邮箱等。 
平台管理员有权限编辑和删除用户信息。 
4)管理工作列表 
平台管理员可以查看所有发布的工作列表，或者根据一定的条件检索发布的工作，包括但不限于工作名称、工作类别、发布人、公司、发布时间等。 
平台管理员有权限删除发布的工作。
5.4.功能方面其他需求
1)数据量大的查询添加数据分页功能
2)请在所有需要发送异步请求的功能里使用Ajax
3)表单元素添加适当的验证，如验证密码或用户名的有效输入
6.非功能行需求
6.1.页面要求
1) 所有页面的页头和页尾保持基本一致。 
2) 页头至少要显示网站标题。 
3) 页尾至少要显示版权信息。 
4) 页面内布局要保持干净、整洁。 
5) 页面内导航要保持规范。注意当前页、上一页和下一页的连接。 
6) 如果目标页不存在或无法访问应显示错误信息，必须使用自定义页显示错
误信息，不允许使用系统自带的错误页面处理。 
7) 首页显示一些热门工作和最新发布工作的链接 
8) 首页显示检索文本框，让用户可以检索感兴趣的工作 
  
6.2.安全性
敏感信息不能通过明文发送，例如注册、登录、修改密码等操作。可以考虑通
过md5值加密。
7.其他要求
1.1在所有需要添加分页的功能中添加分页功能。
1.2在首页显示可以转到登录和注册界面的超链接。
