- **概要**
	- 通过20年的APT数据，探索网球公开赛年代以来的变化趋势
	- ACE解释:对局双方中一方发球，球落在有效区内，但对方却没有触及到球而使之直接得分的发球。如果对方触到球，而出界或下网，则只称作发球得分，而不是ACE球。
- **设计**
	- 图表类型
		- 选择了使用折线图来表现时序数据，能更好的展现20年ATP的变化趋势
	- 视觉编码
		- 根据想要展示的趋势的重要性，和视觉编码排序选择最合适的编码方式
			- 平均年龄变化是主要想要呈现的趋势，选择准确度最高的pisition编码
			- 平均身高变化是其次想要展现的，选择Size编码
			- ACE球变化数量是相对最不重要的，选择Color编码
	- 图表说明
		- X 轴： 年份
		- Y 轴： 年龄
		- 颜色： 场均ACE球数量
		- 圆圈大小： 平均身高
	
- **反馈**
	- 反馈没意识到可以进行交互
		- 考虑到该用户是用手机查看图表，大部分电脑用户并未反馈这个问题，所以不予修改
	- 反馈标题有问题，没有准确定义是男子网球还是女子还是全体
		- 修改了图表标题，改为男子球员
	- 反馈平均身高提高很有可能是因为全球身高都在上升
		- 考虑了身高和年龄所反映的内容的重要程度和意义，修改图表互换年龄和身高的编码方式
	- 不了解网球的读者反馈很好奇年龄为什么会有这样的变化
		- 尝试性的在图表里加入了解释，但是考虑到图表的读者群体大部分是对网球有了解的人，所以最后不予修改
	- 反馈注意到了年龄变化里的小细节，几年上升然后下降，分析原因很可能是一批球员的退役时间；并且注意到了2008年之后上升加快，很有可能证明了目前网球尴尬的断层现象。（没有新球员登顶）
		- 在经过思考是否要需要用不同颜色标注折线的上升和下降部分，并且高亮2008年，最后觉得想要展现的是整体趋势，所以最终没有选择进行修改，选择把更多的解释权留给读者
- **资源**
	- 数据来源于https://github.com/JeffSackmann/tennis_atp
	- 参考：
		- D3折线图：http://ju.outofmemory.cn/entry/60346
		- 《数据可视化实战》
		- StackFlow
	
