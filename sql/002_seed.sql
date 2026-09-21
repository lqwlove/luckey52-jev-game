-- 服务器执行：
--   psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f sql/002_seed.sql
-- 可重复执行。题目来自公开整理页的四选一摘录，不含版权书整本。

BEGIN;
INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx001', '开心辞典', '地理', '世界四大洋中面积最小的是？', '太平洋', '大西洋', '印度洋', '北冰洋', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx002', '开心辞典', '地理', '世界上海拔最高的山峰是哪一座？', '乔戈里峰', '珠穆朗玛峰', '干城章嘉峰', '公格尔山峰', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx003', '开心辞典', '常识', '下列海洋中哪一个是我国最大的海？', '南海', '东海', '黄海', '渤海', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx004', '开心辞典', '地理', '按年呑吐量算世界最大的港口是？', '纽约港', '神户港', '鹿特丹港', '上海港', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx005', '开心辞典', '常识', '美国是于哪一年宇宙飞船登月成功？', '1964', '1965', '1966', '1967', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx006', '开心辞典', '地理', '下列哪一个湖泊是在我国江西省的境内？', '洞庭湖', '鄱阳湖', '太湖', '洪泽湖', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx007', '开心辞典', '常识', '下列我国名茶中哪一种是产于福建安溪？', '龙井', '碧螺春', '武夷岩茶', '铁观音', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx008', '开心辞典', '常识', '吉林省抚松县被人们称为是哪种药材之乡？', '当归', '枸杞', '人参', '田七', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx009', '开心辞典', '地理', '石头城是对我国哪座城市的美称？', '南昌', '南京', '拉萨', '西安', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx010', '开心辞典', '地理', '"山城"是我国哪座城市的雅号？', '洛阳', '西安', '重庆', '福州', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx011', '开心辞典', '地理', '峨眉山位于我国哪个省份？', '四川', '云南', '贵州', '西藏', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx012', '开心辞典', '地理', '我国面积最大的湖泊是？', '青海湖', '鄱阳湖', '洞庭湖', '太湖', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx013', '开心辞典', '地理', '"鲁"是我国哪个省份的简称？', '河北', '吉林', '山东', '山西', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx014', '开心辞典', '地理', '世界部分首都是以人名命名的,下列哪个不是？', '华盛顿', '莫斯科', '巴黎', '科伦坡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx015', '开心辞典', '地理', '下列河流哪一条是世界流程最长？', '尼罗河', '长江', '亚马孙河', '密西西比河', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx016', '开心辞典', '常识', '世界最大的内陆国是？', '阿富汗', '哈萨克斯坦', '瑞士', '蒙古', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx017', '开心辞典', '常识', '下列哪个岛国不是欧洲国家？', '爱尔兰', '马尔代夫', '马耳他', '冰岛', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx018', '开心辞典', '常识', '下列哪个国家被称为"袋鼠之国"？', '索马里', '新西兰', '澳大利亚', '肯尼亚', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx019', '开心辞典', '地理', '世界国土面积最小的国家是？', '梵蒂冈', '摩纳哥', '瑙鲁', '图瓦卢', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx020', '开心辞典', '地理', '世界石油储量最多是哪一个国家？', '伊拉克', '伊朗', '科威特', '沙特阿拉伯', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx021', '开心辞典', '地理', '下列哪一个城市不是我国的"三大火炉"(高温)之一？', '重庆', '成都', '武汉', '南京', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx022', '开心辞典', '常识', '请问:火车连续发出两声长鸣,这表示？', '前进', '停留', '倒退', '故障', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx023', '开心辞典', '常识', '轮船发出六声短笛,这是表示什么呢？', '倒退', '避让', '转弯', '遇险', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx024', '开心辞典', '常识', '下列著名宫殿哪个位于英国？', '故宫', '凡尔赛宫', '白金汉宫', '克里姆林宫', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx025', '开心辞典', '地理', '著名风景区九寨沟位于我国哪个省？', '台湾', '云南', '广西', '四川', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx028', '开心辞典', '常识', '我国最大的佛像是哪一座？', '潼南金佛', '屏山大佛', '荣成大佛', '乐山大佛', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx029', '开心辞典', '常识', '我国现有四大古桥,其中哪座位于广东潮州？', '赵州桥', '湘子桥', '卢沟桥', '洛阳桥', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx030', '开心辞典', '常识', '世界上现存最大的佛教艺术宝库是？', '敦煌石窟', '云冈石窟', '龙门石窟', '大足石窟', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx031', '开心辞典', '常识', '下列哪一座寺院位于南京市？', '龙岩寺', '国清寺', '玉泉寺', '栖霞寺', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx032', '开心辞典', '常识', '下列我国哪个古迹被誉为"世界八大奇迹"？', '万里长城', '乐山大佛', '秦始皇兵马俑', '敦煌', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx033', '开心辞典', '常识', '我国四大名亭中哪一座亭名是毛泽东题的？', '爱晚亭', '醉翁亭', '陶然亭', '湖心亭', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx034', '开心辞典', '常识', '下列我国名泉中哪一眼位于杭州？', '观音泉', '虎跑泉', '趵突泉', '招隐泉', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx035', '开心辞典', '常识', '我国第一座国家森林公园是？', '武夷山', '长白山', '张家界', '九寨沟', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx036', '开心辞典', '常识', '下列名关哪一座被称为"天下第一关"？', '居庸关', '娘子关', '潼门关', '山海关', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx037', '开心辞典', '地理', '美国"自由女神"座落在哪个城市？', '纽约', '华盛顿', '洛杉矶', '旧金山', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx038', '开心辞典', '常识', '下列著名建筑物哪个不属于法国？', '凯旋门', '比萨斜塔', '埃菲尔铁塔', '卢浮宫', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx039', '开心辞典', '地理', '格林尼威天文台位于哪个城市？', '华盛顿', '巴黎', '伦敦', '柏林', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx040', '开心辞典', '常识', '你知道世界最高的塔是哪一座？', '埃菲尔铁塔', '多伦多塔', '东柏林塔', '莫斯科塔', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx041', '开心辞典', '历史', '我国古代项羽"破釜沉舟"战胜秦军是在哪次战役？', '牧野之战', '巨鹿之战', '官渡之战', '昆阳之战', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx042', '开心辞典', '历史', '下列哪次古代著名战役确立了三国鼎立局面？', '官渡之战', '赤壁之战', '夷陵之战', '长平之战', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx044', '开心辞典', '历史', '我国进行抗美援朝是在哪一年？', '1949.10', '1950.10', '1951.10', '1952.10', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx045', '开心辞典', '常识', '我军"三大纪律,八项注意"中三大纪律不包括？', '不贪污受贿', '一切行动听指挥', '不拿群众一针一线', '一切缴获要归公', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx046', '开心辞典', '历史', '我国抗日战争期间八路军的总指挥是？', '毛泽东', '周恩来', '朱德', '彭德怀', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx047', '开心辞典', '常识', '下列我国军事家中哪位不是"十大元帅"之一？', '叶剑英', '林彪', '罗荣桓', '毛泽东', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx048', '开心辞典', '历史', '我国人民解放军第一位女将军是？', '李贞', '贺子珍', '邓颖超', '蔡畅', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx049', '开心辞典', '常识', '我国现存最早的兵书是？', '孙膑兵法', '吴子', '孙子兵法', '六韬', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx050', '开心辞典', '常识', '比喻变被动为主动是"三十六计"中的哪一计？', '前苏联', '中国', '日本', '德国', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx052', '开心辞典', '常识', '二战后,被处死的日本甲级战犯中哪位时任内阁首相？', '广田弘毅', '东条英机', '土肥原贤二', '松井石根', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx053', '开心辞典', '常识', '下列哪个主权国家中没有军队？', '瑞士', '挪威', '海地', '安道尔', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx054', '开心辞典', '常识', '美国军用飞机编号"F"的含义是指哪类型飞机？', '攻击机', '战斗机', '轰炸机', '反潜机', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx055', '开心辞典', '历史', '我国古代"十八般武艺"中第十八是"白打"意思是？', '打空拳', '用白巾作武器', '用白棒打', '徒手搏斗', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx056', '开心辞典', '常识', '下列火炮哪一种主要是作防空武器？', '加农炮', '高射炮', '迫击炮', '火箭炮', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx057', '开心辞典', '常识', '洲际导弹的射程一般在多少公里以上？', '一百', '一千', '一万', '十万', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx058', '开心辞典', '常识', '我国有一个专门进行核试验的"原子城",它位于？', '新疆', '内蒙古', '青海', '四川', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx059', '开心辞典', '常识', '"隐形飞机"是指什么样的飞机？', '肉眼看不见', '飞行太高看不见', '体积太小', '雷达测不到', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx061', '开心辞典', '常识', '我国卫星火箭发射基地"西昌"位于？', '西藏', '新疆', '四川', '青海', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx062', '开心辞典', '常识', '称得上火炮的口径需在多少毫米以上？', '5', '10', '20', '50', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx063', '开心辞典', '常识', '枪弹的用途不同,弹头的颜色各异,燃烧弹弹头是什么颜色？', '红色', '黄色', '绿色', '黑色', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx064', '开心辞典', '常识', '"粒子束武器"是指什么武器？', '微波武器', '激光武器', 'X射线激光武器', '次声武器', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx065', '开心辞典', '常识', '美国第七舰队主要驻扎在哪里？', '大西洋', '地中海', '东太平洋', '西太平洋', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx066', '开心辞典', '常识', '二战时,日本偷袭美国珍珠港是在哪一年？', '1939.12', '1940.12', '1941.12', '1942.12', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx067', '开心辞典', '历史', '我国古代"三十六计"中第36计是？', '美人计', '空城计', '走为上计', '反间计', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx068', '开心辞典', '常识', '下列将军中哪一位不是大将？', '粟裕', '徐海东', '陈赓', '许世友', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx069', '开心辞典', '常识', '新中国哪一年开始进行军衔授勋？', '1949', '1950', '1955', '1980', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx070', '开心辞典', '历史', '下列哪一个城市是在1949.10建国后才解放的？', '广州', '上海', '南京', '西安', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx071', '开心辞典', '历史', '古代军事家曹操是哪个时期的人物？', '西汉', '东汉', '三国', '南北朝', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx073', '开心辞典', '常识', '下列哪一种是舰艇装备最广泛的主力战舰？', '驱逐舰', '护卫舰', '巡洋舰', '战列舰', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx074', '开心辞典', '常识', '按吨位分,多少吨位才可算是大型航空母舰？', '四万吨', '五万吨', '六万吨', '十万吨', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx075', '开心辞典', '常识', '防弹衣是由什么材料制成的？', '软不透钢', '钨合金钢', '镍合金钢', '陶瓷玻璃钢', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx076', '开心辞典', '常识', '我国军队中一个连辖3-4个排,大约有多少人？', '50-100', '100-120', '120-150', '150-200', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx077', '开心辞典', '常识', '我国担负着北京的警卫和守备勤务的军队组织称为？', '警备区', '要塞区', '卫戍区', '戒备区', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx078', '开心辞典', '历史', '下列哪种奖章是授予抗日战争期间的有功人员的？', '解放奖章', '独立自由奖章', '八一奖章', '独立功勋奖章', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx079', '开心辞典', '历史', '成语"闻鸡起舞""中流击楫"是出自哪们古代将领的故事？', '岳飞', '戚继光', '祖逖', '郑成功', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx080', '开心辞典', '常识', '左轮手枪一共可装几颗子弹？', '5颗', '6颗', '7颗', '8颗', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx081', '开心辞典', '历史', '目前世界纪元(公元前后的划分)的方法是以什么为标准？', '伊斯兰教', '佛教', '犹太教', '耶稣基督教', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx082', '开心辞典', '常识', '下列世界奇迹哪个位于伊拉克？', '金字塔', '空中花园', '宙斯神像', '太阳神像', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx083', '开心辞典', '常识', '第一次世界大战开始的时间是？', '1910', '1914', '1939', '1940', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx084', '开心辞典', '历史', '下列哪个尊称是对古代太子的尊称？', '陛下', '阁下', '殿下', '私下', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx085', '开心辞典', '常识', '下列四个著名代号哪个是二战时日本偷袭珍珠港的代号？', '托拉', '巴巴罗沙', '霸王', '宝石', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx086', '开心辞典', '常识', '美国第一任总统是谁？', '林肯', '华盛顿', '罗斯福', '杜鲁门', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx087', '开心辞典', '常识', '"人不可有傲气,但不可无傲骨"是谁的座右铭？', '孙中山', '李大钊', '徐悲鸿', '周恩来', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx088', '开心辞典', '常识', '有"世界船王"之称的海外炎黄子孙是指？', '王安', '王贞治', '杨小燕', '包玉刚', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx089', '开心辞典', '常识', '第二次世界大战是哪一年爆发的？', '1937', '1938', '1939', '1940', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx090', '开心辞典', '历史', '著名史书《史记》是属于哪一类历史？', '野史', '正史', '杂史', '稗史', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx092', '开心辞典', '地理', '著名古迹"秦始皇兵马俑"位于我国哪个省份？', '湖北', '湖南', '河南', '陕西', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx093', '开心辞典', '常识', '我国是在哪个时期进入奴隶社会的？', '夏', '商', '战国', '秦', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx095', '开心辞典', '历史', '下列农民起义哪次是洪秀全领导的？', '大泽乡起义', '黄巾起义', '赤眉起义', '金田起义', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx096', '开心辞典', '历史', '我国封建王朝正统皇帝大约有多少人？', '约 300 人', '约 400 人', '约 500 人', '约 600 人', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx097', '开心辞典', '常识', '下列历史上的大动乱跟吴三桂有关？', '八王之乱', '三藩之乱', '七国之乱', '安史之乱', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx098', '开心辞典', '历史', '下列历史上的事变是李世民发动的？', '玄武门之变', '陈桥兵变', '靖康之变', '土木之变', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx099', '开心辞典', '常识', '被称为酿酒行业的祖师是谁？', '孔子', '鲁班', '柳永', '杜康', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx100', '开心辞典', '常识', '"文房四宝"中的毛笔是谁发明的？', '乐毅', '闻仲', '蒙恬', '刘伯温', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx101', '开心辞典', '历史', '古代钱的单位"贯"是多少？', '一枚铜钱', '十枚铜钱', '百枚铜钱', '千枚铜钱', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx102', '开心辞典', '历史', '下列清朝皇帝中哪位是末代皇帝？', '宣统', '光绪', '同治', '道光', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx103', '开心辞典', '历史', '中国近代史上第一个不平等条约是？', '北京条约', '南京条约', '尼布楚条约', '马关条约', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx104', '开心辞典', '历史', '下列古代四大美女哪位是西汉时期的？', '西施', '王昭君', '貂婵', '杨贵妃', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx105', '开心辞典', '常识', '史书《汉书》是哪位史学家所著？', '司马迁', '司马光', '左丘明', '班固', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx106', '开心辞典', '历史', '我国唯一的两个皇帝合葬在一起的是唐高宗跟？', '唐高祖', '唐太宗', '武则天', '唐中宗', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx107', '开心辞典', '常识', '下列哪位不是清末被杀害的"戊戌六君子"之一？', '康有为', '杨锐', '刘光第', '林旭', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx108', '开心辞典', '常识', '中华人民共和国国旗五星红旗的设计者是？', '毛泽东', '周恩来', '曾联松', '梁思成', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx109', '开心辞典', '常识', '有"中国的保尔柯察金"是谁？', '吴运铎', '张海迪', '雷锋', '董存瑞', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx112', '开心辞典', '历史', '中国近代史第一次鸦片战争是何时开始的？', '1839', '1840', '1856', '1860', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx113', '开心辞典', '历史', '我国古代"十恶不赦"中的首恶是？', '不义', '不道', '内乱', '谋反', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx114', '开心辞典', '历史', '猜一猜,我国古代哪个朝代的"状元"最多？', '唐朝', '宋朝', '明朝', '清朝', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx115', '开心辞典', '历史', '下列古代盛世哪个是李世民统治的时期？', '成康之治', '文景之治', '贞观之治', '康乾之治', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx117', '开心辞典', '历史', '标志着抗日战争爆发的芦沟桥事变是在哪一年？', '1935', '1936', '1937', '1938', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx118', '开心辞典', '常识', '下列美国总统哪一位没在被刺杀中遇难？', '林肯', '麦金莱', '罗斯福', '肯尼迪', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx119', '开心辞典', '历史', '马拉松长跑来源于马拉松战役,它的爆发地是？', '古代罗马', '古代希腊', '中国', '马其顿', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx120', '开心辞典', '常识', '我国第一颗原子弹研制成功是在哪一年？', '1960', '1962', '1964', '1967', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx121', '开心辞典', '常识', '我国是谁最早发现了甲骨文？', '王懿荣', '刘鹗', '郭沫若', '顾颉刚', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx123', '开心辞典', '常识', '世界上使用人数最多的语言是？', '英语', '汉语', '西班牙语', '世界语', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx124', '开心辞典', '常识', '我国第一部词典是？', '说文解字', '尔雅', '切韵', '史籀', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx125', '开心辞典', '常识', '广东省潮汕地区的潮汕方言是属于哪种方言？', '客家方言', '闽北方言', '闽南方言', '粤方言', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx126', '开心辞典', '常识', '下列哪个成语中没有错别字？', '挺而走险', '脍炙人口', '病入膏肓', '草菅人命', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx127', '开心辞典', '常识', '表示一句话中间的停顿要用什么标点符号？', '逗号', '顿号', '分号', '重点号', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx128', '开心辞典', '常识', '你知道世界语的创始人是谁吗？', '柴门霍夫', '埃利斯', '布拉耶', '奥格登', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx129', '开心辞典', '常识', '我国每年的教师节是在哪一天？', '九月一日', '九月十日', '十月一日', '十月十日', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx130', '开心辞典', '历史', '我国古代著名书院白鹿洞书院位于？', '江西庐山', '湖南长沙', '湖南衡阳', '河南商丘', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx131', '开心辞典', '地理', '中国著名大学科技大学位于哪一个城市？', '北京', '武汉', '上海', '合肥', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx132', '开心辞典', '历史', '成语"凿壁偷光"是出自哪位古代人物的苦学故事？', '孔子', '孙敬', '车胤', '匡衡', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx133', '开心辞典', '历史', '古代科举考试最后在殿试中考取第二名被称为是？', '状元', '探花', '榜眼', '执牛耳', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx134', '开心辞典', '常识', '我国什么时候高等教育开始实施学位制？', '1978', '1979', '1980', '1981', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx135', '开心辞典', '常识', '我国第一位女留学生金雅梅当时留学于何国？', '日本', '美国', '英国', '前苏联', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx136', '开心辞典', '常识', '世界上规模最大的大学是哪所高校？', '纽约州立大学', '哈佛大学', '剑桥大学', '北京大学', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx137', '开心辞典', '常识', '著名高校剑桥大学是在哪个国家？', '美国', '英国', '日本', '中国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx140', '开心辞典', '常识', '我国收入的字最多的字典是哪一部？', '方言', '说文解字', '康熙字典', '新华字典', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx141', '开心辞典', '地理', '著名通讯社路透社是哪一个国家的通讯社？', '中国', '美国', '英国', '法国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx142', '开心辞典', '常识', '著名书籍《物种起源》一书是谁所著？', '哥白尼', '牛顿', '达尔文', '马克思', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx144', '开心辞典', '常识', '我国第一部纪传体通史是？', '汉书', '后汉书', '史记', '春秋', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx145', '开心辞典', '常识', '我国最早的一部医学理论著作是？', '本草纲目', '黄帝内经', '千金方', '伤寒杂病论', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx146', '开心辞典', '常识', '"世界环境日"是在每年的哪一天？', '6月4日', '6月5日', '6月6日', '6月7日', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx147', '开心辞典', '常识', '我国植树节定在每年的3月12日,这也是为纪念哪位人物而定的？', '屈原', '孙中山', '白求恩', '雷锋', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx149', '开心辞典', '常识', '世界人口大国中除中国外还有哪个国家的人口超10亿？', '俄罗斯', '印尼', '加拿大', '印度', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx150', '开心辞典', '常识', '下列哪一种不属于中华民族的三大印记之一？', '内眦褶', '铲形门齿', '黄皮肤', '青斑', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx152', '开心辞典', '常识', '下列国家中哪一个人们的姓名排名次序是先名后姓？', '中国', '日本', '柬埔寨', '英国', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx153', '开心辞典', '常识', '古人对"幼年的儿童"的代称是？', '成童', '束发', '总角', '及笄', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx154', '开心辞典', '常识', '古人对"六十岁"年龄的人的称呼是？', '而立', '不惑', '知天命', '花甲', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx155', '开心辞典', '常识', '根椐《百家姓》,我国的复姓共有多少个？', '70 个', '76 个', '80 个', '86 个', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx156', '开心辞典', '地理', '下列国家中哪一个国家的人口还不够一亿人？', '尼日利亚', '印尼', '朝鲜', '巴西', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx157', '开心辞典', '常识', '"国际护士节"是在每年的哪一天？', '5.10', '5.11', '5.12', '5.13', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx158', '开心辞典', '常识', '《二十四史》不包括下列哪部史书？', '史记', '金史', '明史', '清史', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx159', '开心辞典', '常识', '图书的常见开本有三种,下列哪种不常见？', '16 开', '24 开', '32 开', '64 开', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx161', '开心辞典', '常识', '下列哪个不属于文学写作"小说三要素"之一？', '时间', '人物', '环境', '情节', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx163', '开心辞典', '常识', '世界文学奖中奖金最多的奖项是？', '列宁文学奖', '海明威奖', '诺贝尔文学奖', '歌德奖', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx164', '开心辞典', '常识', '世界上第一部长篇小说《源氏物语》出自哪个国家？', '中国', '美国', '印度', '日本', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx165', '开心辞典', '常识', '有"世界童话之王"之称的安徒生是何国人？', '荷兰', '瑞典', '挪威', '丹麦', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx166', '开心辞典', '常识', '下列鲁迅作品中哪部不是杂文集？', '热风', '坟', '呐喊', '二心集', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx167', '开心辞典', '常识', '名著《基度山伯爵》的作者是？', '大仲马', '小仲马', '福楼拜', '雨果', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx168', '开心辞典', '常识', '下列作品哪部是小仲马所著？', '高老头', '红与黑', '伪君子', '茶花女', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx169', '开心辞典', '常识', '下列哪位人物不是"意大利文艺复兴三杰"之一？', '但丁', '达·芬奇', '米开朗琪罗', '拉斐尔', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx170', '开心辞典', '常识', '《威尼斯商人》中的吝啬鬼形象人物是？', '阿巴公', '夏洛克', '葛朗台', '泼留希金', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx171', '开心辞典', '常识', '下列名著不属于列夫．托尔斯泰的三大巨著之一的是？', '战争与和平', '安娜·卡列尼娜', '复活', '悲惨世界', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx172', '开心辞典', '常识', '戏剧《春香传》故事的源产地是？', '中国', '日本', '朝鲜', '越南', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx173', '开心辞典', '常识', '我国最早的诗歌总集是？', '诗经', '全唐诗', '花间集', '诗品', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx174', '开心辞典', '常识', '小说《金瓶梅》属于哪一类小说？', '谴责小说', '言情小说', '市井小说', '侠义小说', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx175', '开心辞典', '历史', '"香山居士"是我国古代哪位文学家的别称？', '李白', '杜甫', '白居易', '王维', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx176', '开心辞典', '常识', '下列古典名著哪部不是悲剧？', '窦娥冤', '赵氏孤儿', '汉宫秋', '救风尘', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx177', '开心辞典', '历史', '我国古代历史上写诗最多,达三万多道？', '陆游', '乾隆', '李白', '杜甫', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx178', '开心辞典', '常识', '悲剧《窦娥冤》是谁所著？', '王实甫', '马致远', '关汉卿', '白朴', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx180', '开心辞典', '常识', '古典小说《水浒传》的作者是？', '罗贯中', '施耐庵', '吴承恩', '曹雪芹', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx181', '开心辞典', '常识', '散文《寄小读者》的作者是？', '丁玲', '冰心', '萧红', '茹志鹃', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx182', '开心辞典', '常识', '下列哪部长篇小说的社会背景是"一二．九"运动？', '上甘岭', '红日', '红岩', '青春之歌', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx183', '开心辞典', '常识', '长篇小说《林海雪原》的作者是？', '肖军', '曲波', '吴强', '冯至', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx184', '开心辞典', '常识', '诗歌《大堰河--我的保姆》的作者是？', '田间', '郭沫若', '艾青', '臧克家', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx185', '开心辞典', '常识', '下列剧本哪部不是曹禺所著？', '日出', '雷雨', '北京人', '孔雀胆', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx186', '开心辞典', '常识', '作家秦牧的原名是？', '林觉夫', '沈德鸿', '谢婉莹', '舒庆春', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx187', '开心辞典', '常识', '著有"农村三部曲"的著名作家是？', '巴金', '茅盾', '郭沫若', '欧阳山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx188', '开心辞典', '常识', '"红娘"由来是出自下列哪部古典名剧？', '琵琶记', '西厢记', '长生殿', '桃花扇', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx189', '开心辞典', '常识', '下列哪位文学家没有获得过诺贝尔文学奖？', '泰戈尔', '罗曼·罗兰', '海明威', '鲁迅', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx190', '开心辞典', '常识', '有"二十万行长诗"之称的世界最长的史诗是？', '摩诃婆罗多', '罗摩衍那', '荷马史诗', '唐璜', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx191', '开心辞典', '常识', '莎士比亚四大悲剧中哪部又称"王子复仇记"？', '奥赛罗', '哈姆雷特', '麦克白斯', '李尔王', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx192', '开心辞典', '常识', '我国最早的神话小说是？', '山海经', '古镜记', '搜神记', '世说新语', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx193', '开心辞典', '常识', '徐志摩.胡适等作家是属于哪一个文学流派的？', '江湖派', '桐城派', '公安派', '新月派', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx194', '开心辞典', '常识', '著名琴曲歌辞《胡笳十八拍》是谁的作品？', '左芬', '蔡琰', '李清照', '苏蕙', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx195', '开心辞典', '历史', '下列哪位唐朝诗人是边塞诗的代表人物？', '王维', '杜甫', '李绅', '岑参', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx196', '开心辞典', '常识', '宋代词人陆游辛弃疾是属于哪一个流派？', '婉约派', '豪放派', '雅正派', '闲逸派', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx197', '开心辞典', '常识', '下列文学刊物哪种是鲁迅等人创办的？', '小说月报', '戏剧月刊', '语丝周刊', '创造月报', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx198', '开心辞典', '历史', '下列著名作家哪位不是19世纪英国诗坛三大巨星之一？', '笛福', '济慈', '雪莱', '拜伦', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx199', '开心辞典', '常识', '被列为"世界十大文豪"之一的中国文学家是？', '茅盾', '郭沫若', '鲁迅', '丁玲', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx200', '开心辞典', '常识', '诺贝尔文学奖是从什么时候开始评选的？', '1900', '1901', '1950', '1951', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx201', '开心辞典', '常识', '我国共有多少个少数民族？', '50', '51', '55', '56', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx202', '开心辞典', '常识', '我国少数民族中人口最多的是？', '壮族', '蒙古族', '回族', '藏族', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx203', '开心辞典', '常识', '世界哪个国家的斗牛活动首屈一指？', '印度', '西班牙', '意大利', '美国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx204', '开心辞典', '常识', '亚洲国家中哪个国家最讲究茶道？', '中国', '韩国', '朝鲜', '日本', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx205', '开心辞典', '常识', '世界上有很多种语言,大约有多少种？', '近 1000 种', '近 2000 种', '近 3000 种', '近 4000 种', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx206', '开心辞典', '常识', '按平均每分钟说话的音节算哪个国家的人说话最快？', '法国', '日本', '德国', '美国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx207', '开心辞典', '常识', '我国法律上规定年满多少周岁就有选举权和被选举权？', '十四周岁', '十六周岁', '十八周岁', '二十周岁', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx208', '开心辞典', '常识', '我国士兵预备役的年龄范围为？', '16-30 周岁', '16-35 周岁', '18-30 周岁', '18-35 周岁', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx209', '开心辞典', '常识', '我国婚姻法规定女性结婚年龄不得早于多少周岁？', '16 周岁', '18 周岁', '20 周岁', '22 周岁', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx210', '开心辞典', '常识', '我国要被选为国家主席、副主席年龄要在多少周岁以上？', '35 周岁', '40 周岁', '45 周岁', '50 周岁', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx211', '开心辞典', '常识', '下列数字中哪一个是西方人最忌讳的？', '4', '7', '8', '13', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx212', '开心辞典', '常识', '下列少数民族中哪个民族不忌吃猪肉？', '满族', '哈萨克族', '回族', '乌孜别克族', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx213', '开心辞典', '常识', '许多国家的人都有属相,其中有一个国家与我国基本相同,只是以猫代鼠,这个国家是？', '日本', '越南', '印度', '法国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx214', '开心辞典', '常识', '愚人节是在每一年的哪一天？', '3月1日', '4月1日', '4月4日', '4月5日', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx215', '开心辞典', '常识', '每年中的哪一天是"情人节"？', '1 月 14 日', '2 月 14 日', '3 月 14 日', '4 月 14 日', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx216', '开心辞典', '历史', '中国古代"双手抱拳举过头顶,鞠躬",这是什么拜礼？', '长揖', '再拜', '顿首', '稽首', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx217', '开心辞典', '常识', '供给人的机体热能的最主要营养物质是？', '蛋白质', '脂肪', '糖', '维生素', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx218', '开心辞典', '常识', '下列电话行特种号码哪个是"火警"？', '110', '119', '120', '122', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx219', '开心辞典', '常识', '下列电器标志哪个是音量控制的符号？', 'STOP', 'TONE', 'VOLUME', 'APSS', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx220', '开心辞典', '常识', '铅笔有硬软之分,用英文字母来表示,下列符号相比哪个表示较硬？', '"H"', '"HB"', '"B"', '"2B"', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx221', '开心辞典', '常识', '下列哪种铁路客车车次是直通旅客快车？', '1-98 次', '101-298 次', '301-398 次', '401-498 次', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx222', '开心辞典', '常识', '下列哪个国家很忌用人物肖像作商标？', '法国', '日本', '英国', '美国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx223', '开心辞典', '历史', '"念慈"是古代对对方亲属中哪一位的尊称？', '父亲', '母亲', '伯父', '伯母', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx224', '开心辞典', '常识', '"下半旗致哀"的由来是源于什么人物的去世？', '族长', '酋长', '船长', '皇帝', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx225', '开心辞典', '常识', '我国云南阿昌族庆中秋节的活动是？', '走月', '行月', '赏月', '跳月', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx226', '开心辞典', '常识', '下列哪个节日原是为纪念耶稣被钉死在十字架上？', '圣诞节', '复活节', '愚人节', '感恩节', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx227', '开心辞典', '常识', '下列哪个国家一般不准女性在生人面前露面？', '沙特阿拉伯', '印度', '印尼', '孟加拉', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx228', '开心辞典', '常识', '我国道家学派创始人是？', '孔子', '老子', '庄子', '孟子', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx229', '开心辞典', '常识', '"天下兴亡,匹夫有责"是哪位思想家的名言？', '黄宗羲', '顾炎武', '王夫之', '王充', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx230', '开心辞典', '常识', '《古兰经》是哪个宗教的经典？', '佛教', '基督教', '伊斯兰教', '道教', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx231', '开心辞典', '常识', '"丘比特"是西方传说中哪种神的别称？', '天神', '爱神', '智慧之神', '战神', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx232', '开心辞典', '常识', '下列佛教名宗中哪个不是中国而是日本的宗派？', '禅宗', '华严宗', '法华宗', '密宗', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx233', '开心辞典', '常识', '下列基督教的教职中哪个地位仅次于教皇？', '宗主教', '大主教', '神父', '牧师', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx234', '开心辞典', '常识', '基督教的重要节日"圣诞节"是在哪一天？', '12 月 1 日', '12 月 25 日', '1 月 1 日', '1 月 25 日', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx235', '开心辞典', '常识', '下列宗教派别哪个不属于基督教的派别？', '天主教', '东正教', '十叶教', '新教', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx236', '开心辞典', '常识', '伊斯兰教是谁创立的？', '释迦牟尼', '耶稣', '穆罕默德', '乔达摩', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx237', '开心辞典', '常识', '"持剑,坐莲花宝座,骑狮子"的形象是哪位菩萨？', '文殊', '普贤', '观音', '地藏', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx238', '开心辞典', '常识', '下列哪位僧人是小说"西游记"中唐僧的形象？', '鸠摩罗比', '不空', '玄奘', '鉴真', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx239', '开心辞典', '常识', '佛教中的"十恶"最后一恶是？', '妄语', '邪见', '恶口', '贪欲', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx240', '开心辞典', '常识', '"比丘尼"是对佛教中哪一类人的称呼？', '和尚', '行者', '女居士', '尼姑', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx241', '开心辞典', '常识', '奥林匹克运动会的发源地是？', '古罗马', '古希腊', '古代中国', '古巴比伦', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx242', '开心辞典', '常识', '第一届奥运会什么时候开始举行？', '1890 年', '1894 年', '1896 年', '1900 年', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx243', '开心辞典', '地理', '2008年奥运会将在哪个城市举行？', '巴黎', '费城', '莫斯科', '北京', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx244', '开心辞典', '常识', '奥运会旗是:"五色环"旗,其中黄色环代表？', '亚洲', '欧洲', '非洲', '大洋洲', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx245', '开心辞典', '常识', '第一届世界杯足球赛是在哪个国家举行？', '法国', '意大利', '乌拉圭', '巴西', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx246', '开心辞典', '常识', '下列国家哪个素有"足球王国"之称？', '德国', '意大利', '阿根廷', '巴西', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx247', '开心辞典', '常识', '下列体育项目哪项不是奥运会"五项全能"之一？', '200米', '跳高', '跳远', '1500米', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx248', '开心辞典', '常识', '体育运动篮球最早起源于？', '美国', '中国', '英国', '法国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx249', '开心辞典', '常识', '女子游泳衣称"比基尼",这个名字源于什么名？', '设计师', '运动员', '模特', '小岛', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx250', '开心辞典', '常识', '我国第一个获得世界冠军的是谁？', '吴传玉', '郑凤荣', '荣国团', '陈镜开', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx251', '开心辞典', '常识', '我国最早在奥运会上夺金牌的是哪位运动员？', '李宁', '许海峰', '高凤莲', '吴佳怩', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx252', '开心辞典', '常识', '高尔夫球运动的运动场上共有多少个球洞？', '18 个', '19 个', '20 个', '21 个', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx253', '开心辞典', '常识', '围棋共有多少个棋子？', '360', '361', '362', '365', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx254', '开心辞典', '常识', '下列中国象棋手哪位获全国冠军次数最多？', '杨官璘', '谢思明', '胡荣华', '谢侠逊', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx255', '开心辞典', '常识', '体育项目铅球所用的球的重量约多少公斤？', '5 公斤', '6 公斤', '7 公斤', '8 公斤', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx256', '开心辞典', '常识', '世界游泳锦标赛最长的是男子1500米什么泳式？', '自由泳', '蛙泳', '仰泳', '蝶泳', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx258', '开心辞典', '常识', '下列哪项比赛替被队员可以在任何时候入场比赛？', '足球', '篮球', '排球', '手球', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx259', '开心辞典', '常识', '现任国际奥委会主席的是？', '维凯拉斯', '罗格', '顾拜旦', '萨马兰奇', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx260', '开心辞典', '常识', '下列哪一个口号不是奥运会的口号？', '更高', '更快', '更强', '更好', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx261', '开心辞典', '常识', '名言"生命在于运动"是谁说的？', '车尔尼夫斯基', '普希金', '伏尔泰', '契诃夫', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx262', '开心辞典', '常识', '饱食后不宜做剧烈运动这是因为？', '会得阑尾炎', '有障消化', '导致神经衰弱', '呕吐', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx263', '开心辞典', '常识', '比赛时,一队白帽,另一他蓝帽,守门员红帽,这是什么比赛？', '冰球', '橄榄球', '水球', '曲棍球', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx264', '开心辞典', '常识', '两人徙手较量,以将对方摔倒或推出界外为胜的比赛是？', '相扑', '角力', '摔跤', '柔道', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx265', '开心辞典', '常识', '职业拳击运动员争夺"世界拳王"必须多少周岁？', '18', '20', '21', '25', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx266', '开心辞典', '常识', '我国哪位运动员第一次获得田径比赛冠军？', '邹振华', '徐永久', '黄志红', '刘华金', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx267', '开心辞典', '常识', '新中国成立后,第一次参加奥运会是在哪一年？', '1952', '1956', '1980', '1984', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx268', '开心辞典', '常识', '体操比赛中有四个动作以我国运动员的名字命名,其中鞍马是？', '李月久', '童非', '李宁', '李小双', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx270', '开心辞典', '常识', '跳竹杆是我国哪个少数民族的传统体育运动？', '壮族', '苗族', '白族', '黎族', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx271', '开心辞典', '常识', '朱建华夺取世界跳高冠军是以什么姿式？', '跨越式', '俯卧式', '背越式', '剪式', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx272', '开心辞典', '常识', '我国最早打破举重世界纪录的是哪位运动员？', '陈镜开', '陈伟强', '何灼强', '何英强', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx273', '开心辞典', '常识', '周恩来倡导中小学生每天必须多长时间的体育运动？', '半小时', '一小时', '一小时半', '二小时', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx274', '开心辞典', '常识', '下列哪位武术家是迷踪拳的创始人？', '董海川', '张长兴', '霍元甲', '李存义', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx275', '开心辞典', '常识', '电影《神行太保》是描写哪项体育活动的故事片？', '长跑', '滑冰', '登山', '自行车', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx276', '开心辞典', '地理', '1990年第十一届亚运会在哪个城市举行？', '东京', '汉城', '北京', '曼谷', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx277', '开心辞典', '常识', '"发展体育运动,增强人民体质"是我国哪位领导人的题词？', '毛泽东', '周恩来', '邓小平', '贺龙', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx278', '开心辞典', '常识', '下列哪个国家因"卒可攻王,攻后"而禁止下国际象棋？', '印度', '印尼', '肯尼亚', '沙特阿拉伯', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx279', '开心辞典', '常识', '我国被称为哪一类体育运动的体育王国？', '羽毛球王国', '乒乓球王国', '排球王国', '举重王国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx280', '开心辞典', '常识', '蓝球队员的号码因跟裁判的手势有关而没有哪三个号码？', '1、2、3', '1、2、4', '1、2、5', '2、4、6', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx281', '开心辞典', '常识', '通过中国共产党参加共产国际的决议是党的第几次大会？', '中共一大', '中共二大', '中共三大', '中共四大', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx282', '开心辞典', '常识', '《共产党》月刊创办于是1920年11月,主编是谁？', '李达', '陈望道', '李汉俊', '李大钊', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx283', '开心辞典', '常识', '革命人物中有一位被人们传诵为"两条半枪闹革命"的是谁？', '彭湃', '杨靖宇', '贺龙', '方志敏', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx284', '开心辞典', '常识', '我国的基本政治制度是什么？', '人民民主专政制度', '民主集中制', '人民代表大会制度', '多党执政制度', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx286', '开心辞典', '常识', '行为人负刑事责任的基础是什么？', '年满十八周岁', '违反刑法', '违反法律', '犯罪构成', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx288', '开心辞典', '常识', '"非暴力,不合作"的思想是谁提出的？', '尼赫鲁', '真纳', '甘地', '班达拉奈克', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx289', '开心辞典', '常识', '国际法庭设在什么地方？', '瑞士', '美国', '荷兰', '中国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx290', '开心辞典', '常识', '联合国常任理事国共有多少个成员国？', '三', '四', '五', '六', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx291', '开心辞典', '常识', '下列哪个国家不是印度支那三国之一？', '越南', '老挝', '柬埔寨', '泰国', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx292', '开心辞典', '常识', '我国最早的一部按国别编写的史书是？', '左传', '春秋', '国语', '史记', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx293', '开心辞典', '常识', '曾被人称作"擂鼓诗人"的诗人是谁？', '田间', '郭小川', '贺敬之', '艾青', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx294', '开心辞典', '常识', '"真正的诗人是燃烧自己,点燃别人的"是谁所说的？', '拜伦', '雪莱', '托尔斯泰', '裴多菲', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx295', '开心辞典', '常识', '著名的二胡曲<<二泉映月>>的作者是谁？', '刘天华', '阿炳', '聂耳', '冼星海', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx296', '开心辞典', '常识', '我国拍摄的第一部故事影片是？', '定军山', '庄子试妻', '孤儿救祖记', '难夫难妻', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx297', '开心辞典', '地理', '美国自由女神像是哪一个国家的雕塑家的作品？', '美国', '法国', '英国', '德国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx298', '开心辞典', '常识', '著名喜剧电影艺术家卓别林是哪国人？', '英国', '法国', '德国', '美国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx299', '开心辞典', '常识', '"蛇形线是最美的线条"这是哪个美学家提出的？', '贝鲁斯', '巴希', '克罗齐', '荷迦兹', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx300', '开心辞典', '常识', '"人把他的环境人化了"这是谁的论断？', '康德', '黑格尔', '马克思', '丹纳', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx301', '开心辞典', '常识', '我国境内最早的人类是？', '北京人', '元谋人', '山顶洞人', '丁村人', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx302', '开心辞典', '历史', '清朝晚期,被今人誉为"开眼看世界第一人"的是谁？', '魏源', '龚自珍', '林则徐', '严复', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx303', '开心辞典', '历史', '红军长征中,哪次战役最突出反映毛泽东军事思想和指挥才能？', '四渡赤水', '抢渡大渡河', '飞夺沪定桥', '直罗镇战役', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx304', '开心辞典', '常识', '下列哪个国家不是联合国常任理事国之一？', '英国', '法国', '中国', '德国', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx305', '开心辞典', '常识', '秦时,人们开凿沟通湘江和漓江的运河是？', '秦渠', '灵渠', '唐徕渠', '郑国渠', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx308', '开心辞典', '常识', '咖啡的故乡是哪里？', '亚洲', '美洲', '大洋洲', '非洲', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx309', '开心辞典', '常识', '我国第一个南极考察基地"长城站"什么时候落成？', '1980.2', '1981.2', '1985.2', '1986.2', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx310', '开心辞典', '常识', '色盲患者最普遍的不易分辨的颜色是什么？', '红绿', '蓝绿', '红蓝', '绿蓝', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx311', '开心辞典', '常识', '下列哪种症状没有理由是遗传的？', '精神分裂症', '近视', '糖尿病', '口吃', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx312', '开心辞典', '常识', '世界上面值最高的邮票是匈牙利五百亿彭哥,它的图案是？', '猫', '飞鸽', '海鸥', '鹰', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx313', '开心辞典', '常识', '孕妇多吃含哪种元素的食物很有利于分娩和健康？', '铁', '锌', '钙', '碘', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx314', '开心辞典', '地理', '我国少数民族分布最多的省份是？', '广西', '西藏', '云南', '四川', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx315', '开心辞典', '常识', '泼水节是我国哪个少数民族的传统节日？', '彝族', '回族', '壮族', '傣族', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx316', '开心辞典', '常识', '香港回归祖国的时间是？', '1996.7', '1997.7', '1998.12', '1999.12', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx317', '开心辞典', '常识', '世界最早的邮票"黑便士"是哪个国家发行的？', '英国', '法国', '美国', '中国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx318', '开心辞典', '常识', '爱国华侨陈嘉庚出资兴建的大学是哪一所？', '汕头大学', '浙江大学', '厦门大学', '中山大学', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx319', '开心辞典', '历史', '相传我国古代被人们称为有作"掌上舞"的舞蹈家是？', '赵飞燕', '杨玉环', '绿珠', '褒姒', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx320', '开心辞典', '历史', '"史家之绝唱,无韵之离骚"是谁对<<史记>>的赞语？', '茅盾', '郭沫若', '鲁迅', '叶圣陶', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx321', '开心辞典', '历史', '我国古代最大的风俗画是？', '韩熙载夜宴图', '清明上河图', '女史箴图', '千里江山图', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx322', '开心辞典', '常识', '下列名画哪一幅拍卖价最高？', '鸢尾花', '向日葵', '洗衣女郎', '野花之宴', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx323', '开心辞典', '常识', '著名画家毕加索属于哪个流派的画家？', '野兽派', '表现主义', '立体主义', '未来派', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx324', '开心辞典', '常识', '著名油画《开国大典》是谁的作品？', '关山月', '徐悲鸿', '范曾', '董希文', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx325', '开心辞典', '常识', '下列哪一位著名画家擅长画虎？', '张大千', '张善子', '徐悲鸿', '齐白石', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx326', '开心辞典', '历史', '被称为"画圣"的古代画家是？', '吴道子', '顾恺之', '韩干', '张择端', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx327', '开心辞典', '历史', '"天下第一书"《兰亭集序》是哪一位古代书法家的杰作？', '张旭', '王献之', '王羲之', '张芝', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx328', '开心辞典', '历史', '古代楷书四大家哪一位不是唐朝人而是元朝人？', '欧阳询', '柳公权', '颜真卿', '赵孟頫', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx329', '开心辞典', '常识', '书画工具中哪一种以广东肇庆出产最为有名？', '羊毫', '松烟墨', '宣纸', '端砚', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx330', '开心辞典', '常识', '下列著名雕塑中哪一件是罗丹的作品？', '"掷铁饼者"', '"大卫"', '"思想者"', '"维纳斯"', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx331', '开心辞典', '历史', '下列古代名曲哪一首不是古琴曲？', '"十面埋伏"', '"高山流水"', '"阳春白雪"', '"阳光三叠"', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx332', '开心辞典', '常识', '评剧是我国哪个地方的主要戏曲？', '广东', '山西', '云南', '辽宁', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx333', '开心辞典', '常识', '四大戏剧中哪一种原产地是意大利？', '舞剧', '歌剧', '戏曲', '话剧', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx334', '开心辞典', '常识', '下列京剧角色四大行当哪种又称小花脸？', '生', '旦', '末', '丑', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx335', '开心辞典', '常识', '下列戏曲角色行当中哪种只指"女性"？', '生', '旦', '净', '丑', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx336', '开心辞典', '常识', '被称为我国京剧老生鼻祖的是？', '马连良', '奚啸伯', '谭鑫培', '杨宗森', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx337', '开心辞典', '常识', '京剧《贵妃醉酒》是哪位名旦的代表作？', '尚小云', '梅兰芳', '程砚秋', '荀慧生', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx338', '开心辞典', '常识', '戏曲中脸谱颜色哪种表示妖邪？', '红色', '黄色', '白色', '青色', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx339', '开心辞典', '常识', '世界电影奖中最高奖项是？', '金鸡奖', '金犻奖', '奥斯卡金像奖', '金球奖', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx340', '开心辞典', '常识', '世界电影著名男影星阿兰．德隆是何国人？', '法国', '美国', '日本', '英国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx341', '开心辞典', '历史', '我国解放前哪一部电影名片是周旋、赵丹主演的？', '一江春水向东流', '天字第一号', '母与子', '马路天使', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx342', '开心辞典', '常识', '相声演员功夫中哪一种是第一基本功？', '学', '说', '逗', '唱', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx343', '开心辞典', '常识', '新中国第一枚小全张邮票是？', '"国徽"', '"儿童"', '"童话"', '"人民英雄纪念碑"', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx344', '开心辞典', '常识', '我国河北吴桥是以哪一种娱乐活动最为盛名？', '魔术', '杂技', '木偶', '风筝', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx345', '开心辞典', '常识', '美国电影分级标记"PG"是指哪个级别的影片？', '禁止未成年人观看', '未成年人需家长陪同看', '一般观众可看', '成年观众可看', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx346', '开心辞典', '常识', '我国第一部有声影片是？', '四郎探母', '定军山', '林则徐', '玉人何处', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx347', '开心辞典', '常识', '你知道世界是哪个国家拍摄电影最多吗？', '中国', '美国', '印度', '日本', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx348', '开心辞典', '常识', '美国大片《胜利大逃亡》的男主角是？', '派克', '史泰龙', '方达', '斯科特', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx349', '开心辞典', '地理', '电影金棕榈奖是哪一个国家的电影金奖？', '美国', '中国', '法国', '意大利', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx350', '开心辞典', '常识', '、花灯戏是我国哪个地方的戏曲？', '贵州', '四川', '新疆', '云南', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx351', '开心辞典', '常识', '世界最著名的音乐指挥家卡拉扬是何国人？', '匈牙利', '奥地利', '波兰', '德国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx352', '开心辞典', '常识', '圆舞曲《蓝色多瑙河》的作者是哪一位施特劳斯？', '约翰', '约瑟夫', '弗朗茨', '奥斯卡', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx353', '开心辞典', '常识', '一生写了600多首歌曲的"歌曲之王"是谁？', '肖邦', '舒伯特', '莫扎特', '贝多芬', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx354', '开心辞典', '常识', '被誉为"乐圣"的音乐家是谁？', '李斯特', '海顿', '莫扎特', '贝多芬', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx355', '开心辞典', '常识', '被誉为"浑身都是音乐"的著名指挥家是？', '伯恩施坦', '卡拉扬', '小泽征尔', '梅达', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx356', '开心辞典', '常识', '下列哪位世界著名男高音哪位是意大利人？', '盖达', '帕瓦多蒂', '多明戈', '毕约林', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx357', '开心辞典', '常识', '下列哪一首交响曲不是贝多芬的作品？', '"英雄"', '"命运"', '"合唱"', '"悲怆"', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx358', '开心辞典', '常识', '中国工艺品景泰蓝以哪个地方最为盛名？', '景德镇', '北京', '福州', '潮州', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx359', '开心辞典', '常识', '名画《蒙娜丽莎》是谁的作品？', '毕加索', '鲁本斯', '拉斐尔', '达·芬奇', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx360', '开心辞典', '常识', '中国画《愚公移山》是哪一位画家的作品？', '徐悲鸿', '齐白石', '李可染', '范曾', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx361', '开心辞典', '常识', '联合国成立于何年？', '1944.10', '1945.10', '1946.10', '1950.10', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx362', '开心辞典', '常识', '下列机构哪一个不属于联合国的机构？', '联合国大会', '安理会', '国际法院', '国际奥委会', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx363', '开心辞典', '常识', '联合国的总部设在哪一个地方？', '巴黎', '纽约', '伦敦', '北京', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx364', '开心辞典', '常识', '现任联合国秘书长是谁？', '瓦尔德海姆', '德奎利亚尔', '加利', '安南', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx365', '开心辞典', '常识', '欧洲国家卢森堡是属于哪一种国体的国家？', '大公国', '共和国', '联邦体', '酋长国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx366', '开心辞典', '常识', '世界上建立最早的资产阶级国家是？', '英国', '美国', '德国', '荷兰', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx367', '开心辞典', '常识', '中华人民共和国国歌的曲作者是？', '冼星海', '聂耳', '田汉', '郑律成', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx368', '开心辞典', '常识', '中国共产党成立于何时？', '1920.7', '1921.7', '1922.7', '1949.10', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx369', '开心辞典', '常识', '中国第一任最高人民检察院检察长是？', '任弼时', '陈毅', '罗荣桓', '彭德怀', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx370', '开心辞典', '常识', '中国共产主义青年团成立于何时？', '1920.5', '1921.5', '1922.5', '1923.5', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx371', '开心辞典', '常识', '《可爱的中国》一书是哪一位革命烈士的遗著？', '方志敏', '邓恩铭', '林祥谦', '刘志丹', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx372', '开心辞典', '地理', '白求恩大夫是哪一个国家的共产党员？', '美国', '前苏联', '加拿大', '前南斯拉夫', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx373', '开心辞典', '常识', '革命烈士刘胡兰是被哪一个军阀所屠杀的？', '陈炯明', '阎锡山', '张作霖', '孙传芳', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx374', '开心辞典', '常识', '红军二万五千里长征开始于何年？', '1930.10', '1931.10', '1934.10', '1935.10', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx375', '开心辞典', '地理', '红军长征经过多少个省份？', '10 个', '11 个', '12 个', '13 个', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx376', '开心辞典', '常识', '毛泽东号召全国"向雷锋同志学习"是在何年？', '1960.3', '1961.3', '1962.3', '1963.3', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx377', '开心辞典', '常识', '请问:"好好学习,天天向长"是哪一个团体的宗旨？', '共青团', '少先队', '青联', '学联', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx378', '开心辞典', '常识', '现任中华人民共和国国家主席是？', '江泽民', '杨尚昆', '胡锦涛', '李鹏', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx379', '开心辞典', '常识', '现任中华人民共和国国务院总理是？', '朱容基', '温家宝', '李鹏', '吴仪', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx380', '开心辞典', '常识', '中华人民共和国成立后何时进入社会主义阶段？', '1949', '1950', '1955', '1956', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx381', '开心辞典', '常识', '中华人民共和国国家主席,副主席每届任期多少年？', '三年', '四年', '五年', '六年', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx382', '开心辞典', '常识', '中华人民共和国第一部宪法是何年制订的？', '1949', '1950', '1954', '1955', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx383', '开心辞典', '常识', '现任美国总统是？', '里根', '布莱尔', '克林顿', '布什', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx384', '开心辞典', '历史', '下列哪一位英雄不是在"抗美援朝"中牺牲的？', '董存瑞', '邱少云', '罗盛教', '杨根思', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx385', '开心辞典', '常识', '中国共产党第一任总书记是？', '瞿秋白', '陈独秀', '毛泽东', '秦邦宪', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx386', '开心辞典', '常识', '中国共产主义青年团第一任书记是？', '俞秀松', '施存统', '张太雷', '刘仁静', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx387', '开心辞典', '地理', '世界排名第一的万国高通银行是哪一个国家的银行？', '中国', '日本', '美国', '英国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx388', '开心辞典', '地理', '素有"黄金之国"之称是指哪一个国家？', '美国', '沙特阿拉伯', '埃及', '南非', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx389', '开心辞典', '地理', '下列哪一个国家的货币名称不是"盾"？', '印度', '肯尼亚', '荷兰', '越南', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx390', '开心辞典', '常识', '中国人民银行成立于何年？', '1948.10', '1948.12', '1949.10', '1949.12', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx391', '开心辞典', '地理', '世界时装中心之首是位于哪一个城市？', '巴黎', '米兰', '伦敦', '东京', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx392', '开心辞典', '常识', '中国最大的油田是哪一个大油田？', '胜利', '中原', '大港', '大庆', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx393', '开心辞典', '常识', '我国政党除共产党外还有多少个民主党派？', '五个', '六个', '七个', '八个', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx394', '开心辞典', '地理', '我国的城市建制中"大城市"的人口划分是多少？', '100万以上', '50-100万', '20-50万', '20万以下', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx395', '开心辞典', '地理', '奔驰汽车原产于哪一个国家？', '美国', '日本', '德国', '英国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx396', '开心辞典', '地理', '菲利浦电器是哪一个国家的产品？', '日本', '荷兰', '美国', '中国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx397', '开心辞典', '常识', '我国发现最早的纸币是在哪个时期？', '唐朝', '宋朝', '元朝', '明朝', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx398', '开心辞典', '常识', '美国最大的财团是哪一个大财团？', '杜邦', '摩根', '洛克菲勒', '加利福尼亚', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx399', '开心辞典', '常识', '我国第一张人民币的面额是多少？', '10 元', '50 元', '100 元', '1000 元', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx400', '开心辞典', '常识', '下列我国五大银行最晚成立的是？', '中国人民银行', '工商行', '农行', '中国银行', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx401', '开心辞典', '常识', '世界上最大的宫殿是？', '故宫', '白宫', '爱丽舍宫', '克里姆林宫', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx403', '开心辞典', '常识', '郭沫若的诗集有？', '死水', '野草', '女神', '红烛', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx404', '开心辞典', '常识', '地球公转速度为每秒？', '10 公里', '20 公里', '30 公里', '40 公里', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx406', '开心辞典', '常识', '馒头是谁发明的？', '李冰', '诸葛亮', '曹操', '屈原', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx407', '开心辞典', '常识', '撒尿小孩铜像坐落于什么地方？', '纽约', '布鲁塞尔', '哥本哈根', '巴黎', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx408', '开心辞典', '常识', '谁是"中山装"的创始人？', '黄隆生', '孙中山', '汪精卫', '黄兴', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx410', '开心辞典', '常识', '下列行星中,卫星最多的是？', '水星', '地球', '土星', '木星', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx411', '开心辞典', '常识', '下列对清明两代"乡试"考试地点解释正确的是？', '在本乡', '在各县县城', '在各省省城', '在京城书院', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx412', '开心辞典', '常识', '山东山西的"山"是指？', '泰山', '太行山', '沂蒙山', '恒山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx413', '开心辞典', '常识', '我国第一部在国际电影节上获奖的影片是？', '定军山', '渔光曲', '红高梁', '歌女红牡丹', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx414', '开心辞典', '历史', '汉朝最先下诏废除肉刑的皇帝是？', '汉武帝', '汉成帝', '汉文帝', '汉景帝', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx415', '开心辞典', '常识', '人体最大的解毒器官是？', '胃', '肾脏', '肝脏', '脾', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx416', '开心辞典', '常识', '人体最大的器官是？', '皮肤', '脾', '肝脏', '胃', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx417', '开心辞典', '常识', '"郁金香"是哪个国家的象征？', '英国', '挪威', '丹麦', '荷兰', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx418', '开心辞典', '常识', '"韦编三绝"中的"韦"指的是？', '芦苇', '藤条', '麻绳', '皮绳', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx419', '开心辞典', '常识', '我国第一大岛是？', '台湾岛', '海南岛', '崇明岛', '舟山群岛', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx421', '开心辞典', '常识', '下列作中哪部是巴金的作品？', '骆驼祥子', '茶馆', '家', '四世同堂', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx422', '开心辞典', '常识', '奥运会每四年举办一次,会期不超过多少天？', '14 天', '16 天', '20 天', '21 天', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx423', '开心辞典', '常识', '亚洲第一个举办奥运会的国家？', '韩国', '日本', '新加坡', '中国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx424', '开心辞典', '常识', '林则徐"虎门销烟"的时间是？', '1839 年 6 月', '1840 年 6 月', '1841 年 1 月', '1842 年 6 月', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx425', '开心辞典', '常识', '"山重水复疑无路,柳暗花明又一村"是谁的诗句？', '李白', '辛弃疾', '苏轼', '陆游', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx426', '开心辞典', '常识', '神话《白蛇传》中"白娘娘盗仙草"盗的是？', '人参', '冬虫夏草', '灵芝', '田七', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx427', '开心辞典', '常识', '奥运会上的马拉松比赛的起源与什么有关？', '游戏', '战争', '打赌', '竞赛', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx428', '开心辞典', '常识', '国际上用"K"表示含金量,18K表示含金量为？', '90%', '83%', '75%', '50%', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx429', '开心辞典', '常识', '太平天国中的东王是谁？', '韦昌辉', '冯云山', '萧朝贵', '杨秀清', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx430', '开心辞典', '常识', '阿诗玛是我国云南哪个民族塑造的艺术形象？', '彝族', '瑶族', '白族', '苗族', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx432', '开心辞典', '常识', '寒食节是为了纪念谁？', '重耳', '介之推', '晋文公', '屈原', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx434', '开心辞典', '常识', '世界杯足球赛几年举办一次？', '二年', '三年', '四年', '五年', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx435', '开心辞典', '地理', '我国最大的瀑布"黄果树瀑布"位于哪个省？', '湖南', '贵州', '四川', '江西', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx436', '开心辞典', '地理', '中国面积最大的省份是哪一个？', '四川', '新疆', '内蒙古', '西藏', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx437', '开心辞典', '常识', '许海峰在男子什么比赛项目中夺得中国首枚奥运会金牌？', '自选步枪', '自选手枪', '小口径标准手枪', '标准步枪', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx438', '开心辞典', '常识', '"阿里巴巴与四十大盗"的故事里,讲的"阿里巴巴"是哪国人？', '阿拉伯人', '印度人', '中国人', '波斯人', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx439', '开心辞典', '常识', '电子计算机发明于哪一年？', '1945 年', '1946 年', '1970 年', '1980 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx440', '开心辞典', '常识', '成语"卧薪尝胆"说的是哪个人物的故事？', '夫差', '勾践', '伍子胥', '范蠡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx441', '开心辞典', '常识', '下列哪种传染病被我国列为甲类传染病？', '疟疾', '白喉', '麻痹', '鼠疫', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx442', '开心辞典', '常识', '用罂粟的果汁制成的毒品称为？', '白药', '可卡因', '海洛因', '鸦片', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx443', '开心辞典', '常识', '你知道成年人的骨头有几块吗？', '204 块', '205 块', '206 块', '207 块', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx444', '开心辞典', '常识', '用金鸡纳树的树皮制成的"金鸡纳霜"可以治哪种传染病？', '疟疾', '霍乱', '鼠疫', '肺结核', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx445', '开心辞典', '常识', '登革热病是由哪种动物传染的？', '老鼠', '苍蝇', '蚊子', '蟑螂', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx446', '开心辞典', '常识', '我国首次在世界上采用化学方法人工合成胰岛素是在哪一年？', '1964 年', '1965 年', '1966 年', '1967 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx447', '开心辞典', '常识', '你知道胰岛素可治哪种病吗？', '心脏病', '糖尿病', '胃病', '肝病', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx448', '开心辞典', '常识', '下列哪种维生素可治脚气病？', '维生素 A', '维生素 B', '维生素 C', '维生素 E', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx449', '开心辞典', '常识', '血并不都是红色的,田螺的血是什么颜色？', '黑色', '红色', '白色', '蓝色', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx450', '开心辞典', '常识', '下列哪种血型的人抵御传染病的能力较强？', 'A 型', 'B 型', 'AB 型', 'O 型', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx451', '开心辞典', '常识', '下列哪一种中药名不是以传说取名的？', '人参', '何首乌', '相思子', '使君子', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx452', '开心辞典', '常识', '贫血主要原因是人体内缺少哪一种元素？', '钙', '铁', '碘', '氯化纳', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx453', '开心辞典', '常识', '你知道人体大约每公斤体重有多少毫升血？', '70', '77', '80', '88', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx454', '开心辞典', '常识', '人的耐力很大,在断食不断水的情况下最多可坚持多少天？', '7 天', '70 天', '80 天', '90 天', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx455', '开心辞典', '常识', '人类是恒温动物,体温总维持在多少摄氏度左右？', '35', '36', '37', '38', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx456', '开心辞典', '常识', '人的身高一般在多少岁已基本定高度了？', '16-20', '20-25', '25-30', '30-35', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx457', '开心辞典', '常识', '人体最先老化的是哪一部位？', '牙齿', '心脏', '眼睛', '大脑', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx458', '开心辞典', '常识', '世界致命疾病中哪一种最为严重？', '心脏病', '肿瘤', '中风', '肠胃炎', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx459', '开心辞典', '常识', '"世界无烟日"是在每年的哪一天？', '3月7日', '4月7日', '5月7日', '6月7日', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx460', '开心辞典', '地理', '世界哪一个国家的茶叶产量最多？', '中国', '朝鲜', '日本', '印度', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx461', '开心辞典', '常识', '下列哪种花不属于并称的"花中四君子"之一？', '梅花', '兰花', '荷花', '菊花', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx462', '开心辞典', '常识', '人的牙齿一般共有多少枚？', '30', '32', '34', '36', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx463', '开心辞典', '常识', '海洋中最凶猛的海兽是哪一种？', '鲨鱼', '剑鱼', '章鱼', '虎鲸', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx464', '开心辞典', '常识', '被称为"百足虫"的蜈蚣共有多少对步足？', '10', '20', '30', '50', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx465', '开心辞典', '常识', '下列老鼠的天敌中,哪一种是以老鼠为主食？', '猫头鹰', '狗', '猫', '蛇', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx466', '开心辞典', '常识', '下列鸟类中哪一种是候鸟？', '麻雀', '喜鹊', '黄鹂', '啄木鸟', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx467', '开心辞典', '常识', '下列哪一种鱼不能用喷墨汁来抵御对手？', '射水鱼', '乌贼', '章鱼', '鱿鱼', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx468', '开心辞典', '常识', '下列哪种动物不属于鱼类？', '鲢鱼', '甲鱼', '草鱼', '青鱼', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx469', '开心辞典', '常识', '看鱼鳞能识鱼龄,鱼鳞上的一圈是表示？', '半岁', '一岁', '一岁半', '两岁', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx470', '开心辞典', '常识', '下列哪种动物没有"分身术""再生术"的本领？', '水螅', '蟹', '壁虎', '蜻蜓', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx471', '开心辞典', '常识', '世界上最大的动物是哪一种？', '鲸鱼', '水母', '恐龙', '大象', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx472', '开心辞典', '常识', '一只蜜蜂一天最多能酿0.15克蜜,这大概需吮吸多少朵花的花粉？', '1000', '2000', '3000', '5000', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx473', '开心辞典', '常识', '下列哪种食物不是食用菌类？', '香菇', '芝麻', '草菇', '木耳', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx474', '开心辞典', '常识', '花的颜色共有4197种,其中哪种颜色最多？', '白色', '黄色', '红色', '蓝色', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx475', '开心辞典', '常识', '下列哪种水果树不是真正的树？', '椰树', '荔枝树', '香蕉树', '龙眼', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx476', '开心辞典', '常识', '下列哪种症状可用热敷的疗法？', '鼻出血', '胃肠痉挛', '高烧', '局部早期扭伤', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx477', '开心辞典', '常识', '坐长途车要注意揉搓小腿、大腿这是为防止？', '晕车', '心理压力增大', '窒息', '脚浮肿', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx478', '开心辞典', '常识', '鱼肝油丸是哪一种维生素？', '维生素 A', '维生素 B', '维生素 AD', '维生素 PP', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx479', '开心辞典', '常识', '医学中的脱氧核糖核酸是我们通常说的？', 'DHA', 'DNA', 'DDT', 'CT', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx480', '开心辞典', '常识', '人体的身高与哪一种最有主要的关系？', '遗传', '营养', '增高器械', '地理环境', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx481', '开心辞典', '常识', '世界上最大的宫殿是？', '故宫', '白宫', '爱丽舍宫', '克里姆林宫', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx482', '开心辞典', '常识', '电度表上的一度电表示耗电量为？', '1百瓦/小时', '1千瓦/小时', '1瓦/小时', '10瓦/小时', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx483', '开心辞典', '常识', '郭沫若的诗集有？', '死水', '野草', '女神', '红烛', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx484', '开心辞典', '常识', '根据有关规定,职工的试用期最长不得超过？', '3个月', '6个月', '一年', '两年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx485', '开心辞典', '常识', '中国民间为什么要吃腊八粥？', '迎接春节', '纪念释迦牟尼', '纪念小寒来临', '纪念冬天来临', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx486', '开心辞典', '常识', '发射第一颗人造卫星的国家是？', '前苏联', '美国', '中国', '日本', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx487', '开心辞典', '常识', '《新人口论》的作者是哪国人？', '中国人', '英国人', '美国人', '俄国人', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx488', '开心辞典', '常识', '下列行星中,卫星最多的是？', '水星', '地球', '土星', '火星', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx489', '开心辞典', '常识', '太阳的年龄约有多大？', '30 亿岁', '50 亿岁', '80 亿岁', '100 亿岁', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx490', '开心辞典', '常识', '男子竞技体操项目不包括？', '单杠', '鞍马', '高低杠', '吊环', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx491', '开心辞典', '常识', '"食色,性也"是谁说的？', '孟子', '孔子', '老子', '韩非子', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx492', '开心辞典', '常识', '被称作东方威尼斯的是？', '杭州', '苏州', '桂林', '上海', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx493', '开心辞典', '常识', '下列哪一个不是我国的领海？', '黄海', '东海', '北海', '渤海', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx494', '开心辞典', '常识', '山东山西的"山"是指？', '泰山', '太行山', '沂蒙山', '恒山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx495', '开心辞典', '常识', '中国在国际货币基金组织中属于？', '观察员', '正式成员', '准成员', '非成员', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx496', '开心辞典', '常识', '人的心脏共有几个心房和心室？', '1个', '2个', '3个', '4个', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx497', '开心辞典', '常识', '我国第一部在国际电影节上获奖的影片是？', '定军山', '渔光曲', '祝福', '红高梁', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx498', '开心辞典', '常识', '亡羊补牢中的"牢"指的是？', '牢房', '牲口圈', '院子', '栅栏', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx499', '开心辞典', '常识', '"打蛇打七寸"的七寸是指？', '咽喉', '心脏', '头部', '尾巴', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx500', '开心辞典', '常识', '以下哪个不属于使馆馆长的级别？', '大使', '公使', '代办', '临时代办', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx501', '开心辞典', '常识', '下列名称不属于二十四节气的是？', '谷雨', '芒种', '大伏', '霜降', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx502', '开心辞典', '常识', '国画《愚公移山》的作者是？', '张大千', '李可染', '赵无极', '徐悲鸿', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx503', '开心辞典', '常识', 'Internet最初用作？', '军事工业', '民用', '商业', '电信业', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx504', '开心辞典', '常识', '最清洁的能源是？', '石油', '太阳能', '煤气', '沼气', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx505', '开心辞典', '常识', '世界上最深的海沟位于？', '太平洋', '大西洋', '北冰洋', '印度洋', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx506', '开心辞典', '历史', '康熙皇帝的庙号是？', '仁宗', '太宗', '穆宗', '圣祖', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx507', '开心辞典', '常识', '"五角大楼"是美国哪个机构的代称？', '中情局', '国防部', '信息工程部', '劳工部', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx509', '开心辞典', '常识', '我国的海岸线有多少公里？', '17000', '18000', '19000', '20000', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx510', '开心辞典', '常识', '"二人转"是？', '东北曲艺', '陕北曲艺', '河南曲艺', '山东曲艺', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx511', '开心辞典', '常识', '人体最大的解毒器官是？', '胃', '肾脏', '肝脏', '脾', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx512', '开心辞典', '常识', '"世界三大男高音"中的多明戈和卡雷拉斯都是？', '意大利人', '西班牙人', '匈牙利', '奥地利', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx513', '开心辞典', '常识', '"白雪公主"这个形象最早来自于？', '格林童话', '安徒生童话', '伊索寓言', '天方夜谭', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx514', '开心辞典', '常识', '"郁金香"是哪个国家的象征？', '英国', '挪威', '丹麦', '荷兰', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx515', '开心辞典', '常识', '校园歌曲《童年》的词曲作者是？', '黄舒骏', '李宗盛', '罗大佑', '李泰祥', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx516', '开心辞典', '常识', '最早可卡因是一种？', '解酒药', '麻醉剂', '调料品', '安眠药', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx517', '开心辞典', '常识', '现在美国国旗星条旗上有多少颗星？', '25 颗', '30 颗', '50 颗', '60 颗', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx518', '开心辞典', '常识', '"韦编三绝"中的"韦"指的是？', '芦苇', '藤条', '麻绳', '皮绳', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx519', '开心辞典', '常识', '现代汉语有几大方言？', '7种', '6种', '8种', '9种', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx520', '开心辞典', '常识', '人体含水量百分比最高的器官是？', '肝', '肾', '眼球', '胃', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx522', '开心辞典', '常识', '人体中最大的消化腺是？', '肝脏', '胰脏', '胃', '肾', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx523', '开心辞典', '常识', '东汉末年我国的一位杰出的医学家是？', '扁鹊', '华佗', '李时珍', '叶天士', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx524', '开心辞典', '常识', '我国第一大岛是？', '台湾岛', '海南岛', '崇明岛', '南澳岛', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx525', '开心辞典', '地理', '世界上流经国家最多的河流是？', '多瑙河', '尼罗河', '莱茵河', '亚马逊河', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx526', '开心辞典', '常识', '歌剧《图兰朵》中采用了我国哪首民歌的曲调？', '采茶灯', '茉莉花', '兰花花', '?撞?', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx527', '开心辞典', '常识', '"碧螺春"茶是一种？', '红茶', '绿茶', '青茶', '黑茶', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx528', '开心辞典', '常识', '奥运会第一个只有女子才能参加的比赛项目是？', '高低杠', '花样游泳', '艺术体操', '排球', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx529', '开心辞典', '常识', '"世界艾滋病日"是？', '5 月 3 日', '6 月 5 日', '9 月 16 日', '12 月 1 日', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx531', '开心辞典', '常识', '《十面埋伏》是？', '二胡曲', '唢呐曲', '琵琶曲', '古筝曲', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx532', '开心辞典', '常识', '下列作品哪部是巴金的作品有？', '骆驼祥子', '茶馆', '家', '四世同堂', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx533', '开心辞典', '常识', '"春种一粒粟"中的粟指？', '大米', '谷子', '高梁', '麦子', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx534', '开心辞典', '常识', '奥运会每四年举办一次,会期不超过？', '14 天', '16 天', '20 天', '15 天', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx535', '开心辞典', '常识', '《西游记》中的"火焰山"位于我国的哪个地方？', '甘肃', '新疆', '内蒙古', '青海', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx536', '开心辞典', '历史', '被称为"书圣"的古代书法家为？', '柳宗元', '颜真卿', '王羲之', '欧阳修', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx537', '开心辞典', '常识', '"虎门销烟"的时间是？', '1839 年 6 月', '1840 年 6 月', '1841 年 1 月', '1842 年 1 月', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx538', '开心辞典', '常识', '被称为"万物之园"的是？', '颐和园', '圆明园', '拙政园', '寄畅园', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx539', '开心辞典', '常识', '美国领土居世界第几位？', '第二位', '第三位', '第四位', '第五位', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx540', '开心辞典', '常识', '"山重水复疑无路,柳暗花明又一村"是谁的诗句？', '李白', '辛弃疾', '苏轼', '陆游', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx541', '开心辞典', '常识', '中国工商银行发行的信用卡是？', '牡丹卡', '龙卡', '金穗卡', '长城卡', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx542', '开心辞典', '常识', '邮票的发明者是？', '爱迪生', '罗兰希尔', '拜伦', '维多利亚女王', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx543', '开心辞典', '常识', '《四库全书》的总纂官是谁？', '纪晓岚', '于敏中', '乾隆', '刘庸', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx544', '开心辞典', '地理', '下面哪个省市不是黄河流经的区域？', '山东', '内蒙古', '甘肃', '湖北', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx545', '开心辞典', '常识', '神话《白蛇传》中"白娘娘盗仙草"盗的是？', '人参', '冬虫夏草', '灵芝', '发菜', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx546', '开心辞典', '常识', '我国的第一部诗歌总集是？', '楚辞', '乐府', '诗经', '春秋', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx547', '开心辞典', '常识', '泼水节是我国哪一民族一年中的最盛大的节日？', '傣族', '苗族', '白族', '壮族', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx548', '开心辞典', '常识', '人体最坚硬的部分是？', '指甲', '牙齿', '骨头', '眼睛', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx549', '开心辞典', '常识', '少林寺位于五岳中的哪一岳？', '东岳', '西岳', '中岳', '南岳', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx550', '开心辞典', '常识', '"明月几时有?把酒问青天。"是谁的诗词？', '李白', '白居易', '苏东坡', '杜甫', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx551', '开心辞典', '地理', '七大洲中面积最小的是？', '非洲', '大洋洲', '南极洲', '北美洲', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx552', '开心辞典', '常识', '太平天国中的西王是谁？', '石达开', '韦昌辉', '冯云山', '萧朝贵', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx553', '开心辞典', '常识', '"草圣"是指那位书法家？', '张旭', '钟鳐', '王羲之', '张芝', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx554', '开心辞典', '常识', '《义勇军进行曲》是哪一位作曲家所作的抗日歌曲？', '冼星海', '贺绿汀', '聂耳', '黄自', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx555', '开心辞典', '地理', '世界上最靠北的首都是？', '斯德哥尔摩', '莫斯科', '雷克亚未克', '哥本哈根', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx556', '开心辞典', '常识', '世界上最长的山脉是？', '比利牛斯山', '喜马拉雅山', '安第斯山', '乞力马扎罗山', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx557', '开心辞典', '历史', '第一次鸦片战争发生的时间是？', '1839 年 3 月', '1840 年 6 月', '1841 年 1 月', '1842 年 8 月', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx558', '开心辞典', '常识', '五岳中的中岳是？', '泰山', '嵩山', '华山', '恒山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx559', '开心辞典', '常识', '"成也萧何,败也萧何"说的是谁的经历？', '刘邦', '张良', '韩信', '项羽', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx560', '开心辞典', '常识', '设立股份有限公司,应有几个以上发起人？', '3个', '5个', '2个', '7个', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx561', '开心辞典', '常识', '"琴棋书画"中的"棋"指？', '象棋', '围棋', '古代象棋', '国际象棋', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx562', '开心辞典', '常识', '世界上共有四个国中之国,以下哪一个不是？', '梵蒂冈', '圣马力诺', '汤加', '摩纳哥', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx564', '开心辞典', '常识', '《嘎达梅林》是哪个民族的叙事歌曲？', '维吾尔族', '哈萨克族', '蒙古族', '达斡尔族', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx566', '开心辞典', '常识', '软科学是指关于？', '软件的科学', '科学管理和决策的科学', '绿色农业的科学', '轻工业科学', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx568', '开心辞典', '常识', '世界上第一枚邮票是于哪年发行的？', '1820 年', '1840 年', '1860 年', '1900 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx569', '开心辞典', '常识', '寒食节是为了纪念谁？', '重耳', '介之推', '晋文公', '魏武帝', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx570', '开心辞典', '历史', '古代小说常用"沉鱼落雁,闭月羞花"形容女性之美,其中"闭月"是指？', '杨玉环', '赵飞燕', '西施', '貂禅', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx571', '开心辞典', '常识', '"琵琶"中的"琵"和"琶"最初指的是？', '两种弹奏方法', '两种乐器', '两个人', '两个地名', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx572', '开心辞典', '常识', '《毛泽东选集》最早出版于？', '抗战后期', '解放战争后期', '建国初期', '解放战争初期', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx573', '开心辞典', '历史', '下列姓氏中,哪些原不是古代的官名？', '欧阳', '司马', '上官', '夏侯', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx574', '开心辞典', '常识', '中国国家大剧院最终采用了哪国设计师的方案？', '法国', '美国', '英国', '中国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx575', '开心辞典', '常识', '《黄河大合唱》的作曲者是？', '冼星海', '聂耳', '曹火星', '郑律成', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx576', '开心辞典', '常识', '"不为五斗米折腰"最早是指谁不愿为五斗米折腰？', '陶渊明', '阮籍', '诸葛亮', '司马迁', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx577', '开心辞典', '常识', '《千家诗》收录的是？', '唐代诗歌', '宋代诗歌', '唐至清代诗歌', '唐宋诗歌', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx578', '开心辞典', '常识', '"人生自古谁无死,留取丹心照汗青"的作者是？', '文天祥', '司马迁', '于谦', '岳飞', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx579', '开心辞典', '常识', '著名的《大卫像》是谁的作品？', '拉斐尔', '达芬奇', '米开朗琪罗', '阿古斯特尔', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx580', '开心辞典', '常识', '世界杯足球赛几年举办一次？', '二年', '三年', '四年', '五年', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx581', '开心辞典', '历史', '"破釜沉舟"这个成语出于哪次战争？', '赤壁之战', '长平之战', '巨鹿之战', '官渡之战', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx582', '开心辞典', '常识', '"九宫格"的创始人是？', '欧阳洵', '虞世南', '智永', '米芾', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx583', '开心辞典', '地理', '中国面积最大的省份是哪一个？', '四川省', '新疆', '内蒙古自治区', '西藏自治区', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx584', '开心辞典', '常识', '"吴带当风"是形容我国唐代哪个画家的笔法？', '顾恺之', '吴道子', '张僧繇', '王献之', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx585', '开心辞典', '常识', '被称为"诗圣"的唐代诗人为？', '李白', '杜甫', '白居易', '王维', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx587', '开心辞典', '常识', '国际法院设在哪个国家？', '英国', '荷兰', '法国', '美国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx588', '开心辞典', '常识', '许海峰在男子什么比赛项目中夺得中国首枚奥运会金牌？', '自选步枪', '自选手枪', '小口径标准手枪', '标准步枪', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx589', '开心辞典', '常识', '"阿里巴巴与四十大盗"的故事里,讲的"阿里巴巴"是哪国人？', '阿拉伯人', '印度人', '中国人', '波斯人', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx590', '开心辞典', '常识', '法国干邑白兰地酒的"X.O"标志表示什么意思？', '出产地', '酒精度数', '贮藏期', '价格昂贵', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx591', '开心辞典', '常识', '"人生能有几回搏"这句名言最初出自哪位运动员？', '容国团', '朱建华', '许海峰', '郎平', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx592', '开心辞典', '常识', '"沙龙"Salon是从哪国传进的外来语？', '英国', '法国', '美国', '俄国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx594', '开心辞典', '常识', '中国第一座佛教寺院是哪一座？', '洛阳白马寺', '北京潭柘寺', '五台山清凉寺', '蒿山少林寺', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx595', '开心辞典', '常识', '有"小提琴之王"之称的作曲家是？', '帕格尼尼', '贝多芬', '海顿', '莫扎特', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx596', '开心辞典', '常识', '《洛神赋图》是谁的作品？', '王羲之', '顾恺之', '吴道子', '阎立本', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx597', '开心辞典', '常识', '黄金分割点是多少？', '0.598', '0.618', '0.689', '1.618', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx598', '开心辞典', '常识', '"自由女神像"是哪个国家送给美国的礼物？', '荷兰', '法国', '俄国', '意大利', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx599', '开心辞典', '常识', '第一个在奥运会参赛的中国人是？', '容国团', '吴传玉', '刘长春', '许海峰', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx600', '开心辞典', '常识', '"六畜兴旺"中的"六畜"是指猪、牛、马、羊、狗、鸡六种,其中人工驯化最早的是？', '猪', '马', '鸡', '狗', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx601', '开心辞典', '常识', '中国的铁轨宽多少米？', '1.25 米', '1.435 米', '2 米', '1.525 米', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx602', '开心辞典', '常识', '世界卫生组织的英文缩写是？', 'WHO', 'WHEN', 'HOW', 'WTO', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx603', '开心辞典', '常识', '"十年树木,百年树人"出自谁的名言？', '管仲', '齐桓公', '孔子', '唐高宗', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx604', '开心辞典', '常识', '"刘三姐"是我国哪个少数民族民间传说中的人物？', '苗族', '傣族', '壮族', '白族', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx605', '开心辞典', '常识', '中国第一部彩色故事片是？', '祝福', '女篮五号', '渔光曲', '定军山', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx606', '开心辞典', '地理', '世界上种植面积最大种植量最广泛的粮食作物是？', '水稻', '小麦', '玉米', '大豆', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx607', '开心辞典', '常识', '阿尔卑斯山脉的最高峰是？', '马特峰', '少女峰', '楚格斯匹茨峰', '勃朗峰', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx608', '开心辞典', '常识', '下列哪部小说是日本作家夏目漱石的作品？', '玩偶之家', '群鬼', '我是猫', '死魂灵', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx609', '开心辞典', '常识', '《第五交响曲》(即《命运交响曲》)的作者是？', '肖邦', '巴赫', '李斯特', '贝多芬', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx610', '开心辞典', '常识', '哈雷慧星的平均周期为？', '54 年', '66 年', '76 年', '83 年', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx611', '开心辞典', '常识', '漫画《三毛流浪记》的作者是？', '齐白石', '丰子凯', '张乐平', '张大千', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx612', '开心辞典', '常识', '"二十四史"的最后一部是？', '明史', '清史', '中华民国史', '元史', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx614', '开心辞典', '地理', '美国的白宫位于哪个城市？', '纽约', '华盛顿', '洛衫矶', '旧金山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx615', '开心辞典', '常识', '计算机辅助教学的英文缩写是？', 'CAD', 'CAI', 'CAM', 'CEO', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx616', '开心辞典', '常识', '比长江还要长的河是？', '亚马逊河', '密西西比河', '刚果河', '伏尔加河', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx617', '开心辞典', '历史', '《史记》的作者司马迁是哪个朝代的人？', '西汉', '春秋', '东汉', '秦朝', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx618', '开心辞典', '常识', '"红娘"是哪部作品中的人物？', '西厢记', '牡丹亭', '桃花扇', '西游记', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx619', '开心辞典', '常识', '《孙子兵法》共有多少篇？', '13 篇', '18 篇', '36 篇', '24 篇', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx620', '开心辞典', '常识', '《一千零一夜》出自哪个国家？', '中国', '印度', '阿拉伯', '西班牙', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx621', '开心辞典', '常识', '邮票上的字母T表示什么意义？', '特种邮票', '小型张', '纪念邮票', '四方联', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx622', '开心辞典', '历史', '我国著名的本草著作《本草纲目》(作者:李时珍)创作于哪个朝代？', '唐朝', '宋朝', '元朝', '明朝', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx623', '开心辞典', '常识', '小提琴协奏曲《梁山泊与祝英台》是以哪一种戏剧唱腔为写作素材的？', '京剧', '黄梅戏', '昆剧', '越剧', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx624', '开心辞典', '地理', '欧洲最长的河流是？', '伏尔加河', '莱茵河', '多瑙河', '顿河', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx625', '开心辞典', '常识', '世界上最大的内陆国是？', '蒙古', '扎伊尔', '哈萨克斯坦', '乌克兰', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx626', '开心辞典', '常识', '电子计算机发明于哪一年？', '1945 年', '1946 年', '1970 年', '1971 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx627', '开心辞典', '常识', '我国四大名砚之冠──端砚产自哪里？', '广东', '安徽', '甘肃', '山西', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx628', '开心辞典', '常识', '小提琴有几根弦？', '2根', '3根', '4根', '6根', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx629', '开心辞典', '常识', '中国农业银行发行的信用卡是？', '长城卡', '金穗卡', '牡丹卡', '龙卡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx630', '开心辞典', '常识', '世界上最深的湖是？', '苏必利尔湖', '里海', '贝加尔湖', '青海湖', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx631', '开心辞典', '常识', '被称为"命运交响曲"的是贝多芬的？', '第三交响曲', '第五交响曲', '第九交响曲', '第六交响曲', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx632', '开心辞典', '常识', '"五岳"中的南岳指？', '衡山', '恒山', '泰山', '华山', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx633', '开心辞典', '常识', '《思想者》是谁的雕塑作品？', '罗丹', '罗曼．罗兰', '罗素', '米开朗琪罗', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx634', '开心辞典', '常识', '"祸起萧墙"的"萧墙"是家中的哪一堵墙？', '门墙', '后院墙', '东墙', '内隔墙', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx635', '开心辞典', '地理', '中国最大的湖泊是？', '青海湖', '洞庭湖', '鄱阳湖', '洪泽湖', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx636', '开心辞典', '常识', '我国最先出现的纸币是？', '元代的"宝钞"', '元代的"交子"', '宋代的"宝钞"', '宋代的"交子"', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx637', '开心辞典', '常识', '诺贝尔基金会管理诺贝尔奖金,基金会设在？', '瑞士', '瑞典', '美国', '法国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx639', '开心辞典', '常识', '诺贝尔发明了什么？', '炸药', '留声机', '电视', '电池', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx640', '开心辞典', '常识', '圣诞颂歌《平安夜》的诞生地是？', '瑞士', '奥地利', '匈牙利', '美国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx641', '开心辞典', '常识', '《在那遥远的地方》是？', '四川民歌', '江苏民歌', '云南民歌', '青海民歌', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx642', '开心辞典', '地理', '珠穆朗玛峰海拔？', '7989 米', '8848 米', '8898 米', '1048 米', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx643', '开心辞典', '常识', '太阳系九大行星中位于最外侧的是？', '天王星', '冥王星', '海王星', '土星', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx644', '开心辞典', '常识', '太阳金字塔坐落在哪里？', '埃及', '墨西哥', '中国', '印度', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx645', '开心辞典', '常识', '我国历史上第一部编年体史书是？', '左传', '左氏传', '春秋', '春秋左氏传', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx646', '开心辞典', '常识', '<<义勇军进行曲>>是哪部电影的主题歌？', '塞上风云', '风云儿女', '大路', '十字街头', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx647', '开心辞典', '地理', '黄山在我国的什么省份？', '湖南', '安徽', '四川', '江西', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx648', '开心辞典', '常识', '据《不列颠百科全书》所载,迄今为止世界上最大的百科全书是？', '不列颠百科全书', '美国百科全书', '中国百科全书', '永乐大典', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx649', '开心辞典', '常识', '我国人口何时突破13亿？', '2000年底', '2001年7月', '2004年底', '2005年初', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx650', '开心辞典', '常识', '泰坦尼克号沉没于？', '大西洋', '太平洋', '北冰洋', '印度洋', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx651', '开心辞典', '常识', '钢是由什么组成的？', '纯铁铁', '碳铁', '铝铁', '镍', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx652', '开心辞典', '常识', '戛纳电影节在哪国举办？', '法国', '意大利', '英国', '德国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx653', '开心辞典', '常识', '"总角之交"是指？', '顽童之交', '少年之交', '中年之交', '忘年之交', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx654', '开心辞典', '常识', '西游记中去西天取经的"唐三藏"的真名是？', '玄慈', '玄明', '玄奘', '慧能', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx655', '开心辞典', '常识', '太阳系中最大的行星是？', '土星', '木星', '火星', '海王星', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx656', '开心辞典', '常识', '以下哪一位曾被称为"药王"？', '孙思邈', '张仲景', '李时珍', '扁鹊', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx658', '开心辞典', '常识', '"东床快婿"原本是指？', '司马相如', '赵明诚', '诸葛亮', '王羲之', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx659', '开心辞典', '历史', '古代著名的水利工程都江堰是谁设计的？', '大禹', '李冰父子', '郑国', '商鞅', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx660', '开心辞典', '地理', '黄河壶口瀑布位于陕西与哪个省之间？', '宁夏', '河南', '内蒙古', '山西', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx661', '开心辞典', '常识', '提出"信息高速公路"的美国总统是？', '小布什', '里根', '克林顿', '老布什', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx662', '开心辞典', '常识', '我国第一大河长江有多长？', '5480 公里', '5900 公里', '6300 公里', '7240 公里', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx663', '开心辞典', '常识', '"约翰牛"是哪个国家的绰号？', '英国', '美国', '俄国', '法国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx664', '开心辞典', '常识', '《藤王阁序》的作者是？', '卢照邻', '骆宾王', '杨炯', '王勃', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx665', '开心辞典', '常识', '被称为"乐圣"的外国音乐家为？', '巴赫', '莫扎特', '海顿', '贝多芬', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx666', '开心辞典', '常识', '"世界足球之王"贝利的球衣号为？', '10 号', '12 号', '23 号', '5 号', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx667', '开心辞典', '常识', '省级人民政府每届任期为？', '五年', '四年', '三年', '二年', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx668', '开心辞典', '常识', '"芭蕾舞"是从哪国传进的外来语？', '英国', '法国', '美国', '俄国', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx669', '开心辞典', '常识', '俗称"四不象"的动物是？', '麋鹿', '白唇鹿', '斑马', '恐龙', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx670', '开心辞典', '历史', '我国古代《二十四史》的第一部是？', '史记', '左传', '春秋', '汉书', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx671', '开心辞典', '常识', '世界第一枚邮票出现在？', '英国', '德国', '法国', '美国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx672', '开心辞典', '常识', '夏威夷群岛位于哪个洲？', '北美洲', '亚洲', '欧洲', '大洋洲', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx673', '开心辞典', '常识', '"卧薪尝胆"说的是？', '夫差', '勾践', '伍子胥', '范蠡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx674', '开心辞典', '常识', '"冰激凌"是从哪国传进的外来语？', '英国', '法国', '美国', '俄国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx675', '开心辞典', '常识', '吉它有几根弦？', '4根', '6根', '7根', '5根', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx676', '开心辞典', '历史', '我国古代诗歌史上被称为"双璧"的一篇是:《孔雀东南飞》另一篇是？', '木兰诗', '木兰辞', '离骚', '格萨尔王', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx677', '开心辞典', '常识', '我国最大的淡水湖是？', '洞庭湖', '鄱阳湖', '洪湖', '太湖', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx678', '开心辞典', '常识', '"奥斯卡金像奖"是哪个国家的奖项？', '法国', '意大利', '美国', '英国', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx679', '开心辞典', '历史', '"金屋藏娇"的故事与哪一位皇帝有关？', '汉武帝', '唐太宗', '唐明皇', '元世祖', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx680', '开心辞典', '常识', '"知天命"代指什么年纪？', '二十岁', '七十岁', '三十岁', '五十岁', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx681', '开心辞典', '常识', '坦克是哪个国家发明的？', '英国', '德国', '美国', '法国', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx682', '开心辞典', '常识', '五谷中的菽是指什么？', '谷子', '大豆', '玉米', '高粱', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx683', '开心辞典', '常识', '地球的历史可划分为几个地质时代？', '4个', '5个', '6个', '3个', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx684', '开心辞典', '常识', '美术片《葫芦兄弟》中的四娃是？', '火娃', '水娃', '金刚娃', '大力娃', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx685', '开心辞典', '常识', '被誉为"钢琴之王"的作曲家是？', '肖邦', '勃拉姆斯', '李斯特', '约翰．施特劳斯', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx686', '开心辞典', '常识', '"法西斯"这个词由什么演化而来？', '人名', '地名', '刑法名', '刑具名', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx687', '开心辞典', '历史', '全国性抗日战争爆发的标志是？', '九一八事件', '七七事件', '一一八事件', '一二八事件', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx688', '开心辞典', '常识', '"天字第一号"的来源是？', '天经地义', '天昏地暗', '天地玄黄', '天下无敌', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx689', '开心辞典', '地理', '"一衣带水"的水是指哪条河流？', '长江', '黄河', '珠江', '黑龙江', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx690', '开心辞典', '常识', '我国第一部电视连续剧是？', '敌营十八年', '渴望', '寻找回来的世界', '情满珠江', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx691', '开心辞典', '常识', '在"精卫填海"的故事里,"精卫"是？', '一个人', '一只鸟', '一条龙', '一只猴子', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx692', '开心辞典', '常识', '世界上使用人数最多的语言是？', '汉语', '英语', '法语', '俄语', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx693', '开心辞典', '历史', '古代奥运会最重要、最悠久的奖励方式是？', '美酒', '橄榄枝花冠', '金牌', '武器', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx694', '开心辞典', '常识', '我国在何时将农历正月初一正式定名为春节？', '夏朝', '明朝', '清朝', '辛亥革命后', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx695', '开心辞典', '常识', '李白笔下的"飞流直下三千尺,疑是银河落九天"指的是哪个风景区？', '黄山', '庐山', '峨眉山', '华山', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx696', '开心辞典', '常识', '安徒生的童话《海的女儿》中的"美人鱼"现座落在？', '波兰华沙', '丹麦哥本哈根', '英国伦敦', '法国巴黎', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx699', '开心辞典', '历史', '"大夫"在我国古代是指？', '医生', '侍卫', '官职', '丈夫', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx701', '开心辞典', '常识', '"东施效颦"出自？', '孟子', '庄子', '论语', '红楼梦', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx702', '开心辞典', '常识', '"范进中举"的故事出自小说？', '红楼梦', '水浒', '儒林外史', '西游记', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx703', '开心辞典', '常识', '发明了电话的科学家是？', '贝尔', '爱迪生', '赫兹', '马克尼', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx704', '开心辞典', '常识', '"百老汇"是什么建筑的名字？', '一条街', '一座歌剧院', '一个广场', '一座大楼', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx705', '开心辞典', '常识', '诺贝尔奖得主朱棣文教授是？', '生物学家', '化学家', '物理学家', '天文学家', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx706', '开心辞典', '常识', '全球卫星定位系统的主体部分是由多少颗卫星组成的？', '12 颗', '24 颗', '36 颗', '48 颗', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx707', '开心辞典', '常识', '奥斯卡金像奖的造型是一个男人,他的手里有？', '电影胶片', '一柄长剑', '电影摄像机', '一枝火炬', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx708', '开心辞典', '常识', '有"圆舞曲之父"称号的作曲家是？', '老约翰．斯特劳斯', '肖邦', '贝多芬', '莫扎特', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx709', '开心辞典', '历史', '古代的死刑在什么季节行刑？', '春季', '夏季', '秋季', '冬季', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx712', '开心辞典', '地理', '下列不属于我国西部大开发的省份是？', '青海', '陕西', '新疆', '山西', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx713', '开心辞典', '常识', '世界各国医疗机构用的红十字标志,是根据哪个国家的国旗图案设计的？', '瑞典', '瑞士', '葡萄牙', '西班牙', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx714', '开心辞典', '常识', '避雷针的发明者是？', '富兰克林', '爱迪生', '伏打', '莫尔斯', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx715', '开心辞典', '常识', '《西厢记》的作者是？', '白朴', '关汉卿', '马致远', '王实甫', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx716', '开心辞典', '常识', '人体内数目最多的细胞是什么？', '白血球', '红血球', '色素细胞', '腺细胞', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx717', '开心辞典', '常识', '下面哪一个不属于长江三峡？', '西陵峡', '虎跳峡', '瞿塘峡', '巫峡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx718', '开心辞典', '常识', '第一套奥林匹克邮票是哪个国家发行的？', '希腊', '美国', '西班牙', '土耳其', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx719', '开心辞典', '常识', '下列哪一个单位名称不是表示温度的单位？', '开氏', '华氏', '摄氏', '美氏', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('kx720', '开心辞典', '历史', '中国古代妇女"缠足"开始于何时？', '汉时汉武帝', '唐时李世民', '南唐时李煜', '明时朱元璋', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy001', '幸运52', '常识', '一年有几个季度？', '三个', '四个', '六个', '十二个', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy002', '幸运52', '常识', '太阳从哪个方向升起？', '东', '西', '南', '北', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy003', '幸运52', '常识', '交通信号灯里表示「停」的是哪种颜色？', '绿色', '黄色', '红色', '蓝色', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy004', '幸运52', '常识', '标准大气压下，水的沸点大约是多少摄氏度？', '0 度', '50 度', '80 度', '100 度', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy006', '幸运52', '常识', '人体正常体温大约是多少摄氏度？', '35 度', '36 到 37 度', '39 度', '42 度', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy007', '幸运52', '常识', '一星期有几天？', '五天', '六天', '七天', '十天', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy008', '幸运52', '常识', '《红楼梦》的作者传统上认为是？', '施耐庵', '罗贯中', '曹雪芹', '吴承恩', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy009', '幸运52', '常识', '造纸术的改进者通常认为是？', '毕昇', '蔡伦', '张衡', '祖冲之', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy010', '幸运52', '常识', '活字印刷术的发明者通常认为是？', '蔡伦', '毕昇', '沈括', '宋应星', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy011', '幸运52', '常识', '地动仪是谁发明的？', '张衡', '郭守敬', '僧一行', '徐光启', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy012', '幸运52', '常识', '孔子是哪个时代的人？', '夏朝', '商朝', '春秋', '唐朝', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy013', '幸运52', '常识', '《史记》的作者是？', '班固', '司马迁', '司马光', '左丘明', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy014', '幸运52', '常识', '《资治通鉴》的作者是？', '司马迁', '班固', '司马光', '欧阳修', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy015', '幸运52', '常识', '北京故宫又称？', '天坛', '颐和园', '紫禁城', '圆明园', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy017', '幸运52', '常识', '圆周率精确计算到小数点后七位的古代科学家是？', '张衡', '祖冲之', '刘徽', '郭守敬', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy018', '幸运52', '常识', '中国神话传说中人类的始祖常指？', '嫦娥', '女娲', '西王母', '精卫', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy019', '幸运52', '常识', '传说中文字是谁发明的？', '仓颉', '伏羲', '神农', '黄帝', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy020', '幸运52', '常识', '「天府之国」通常指？', '湖南', '四川', '江苏', '广东', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy021', '幸运52', '脑筋急转弯', '什么瓜不能吃？', '冬瓜', '傻瓜', '南瓜', '西瓜', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy022', '幸运52', '脑筋急转弯', '什么门永远关不上？', '铁门', '球门', '木门', '防盗门', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy023', '幸运52', '脑筋急转弯', '什么东西越洗越脏？', '衣服', '手', '水', '碗', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy024', '幸运52', '脑筋急转弯', '小明的妈妈有三个孩子：大毛、二毛，第三个叫什么？', '三毛', '小毛', '小明', '明明', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy025', '幸运52', '脑筋急转弯', '什么车不能开？', '火车', '风车', '汽车', '马车', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy026', '幸运52', '脑筋急转弯', '什么海没有水？', '东海', '人海', '南海', '渤海', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy027', '幸运52', '脑筋急转弯', '什么帽不能戴？', '草帽', '螺帽', '棉帽', '军帽', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy028', '幸运52', '脑筋急转弯', '什么井没有水？', '水井', '天井', '油井', '深井', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy029', '幸运52', '脑筋急转弯', '什么东西天天吃却吃不完？', '饭', '日子', '水果', '零食', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy030', '幸运52', '脑筋急转弯', '什么布剪不断？', '棉布', '瀑布', '麻布', '帆布', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy031', '幸运52', '脑筋急转弯', '什么鸡没有翅膀？', '公鸡', '田鸡', '母鸡', '火鸡', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy032', '幸运52', '脑筋急转弯', '什么花不能插在花瓶里？', '梅花', '火花', '荷花', '菊花', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy033', '幸运52', '历史', '辛亥革命爆发于哪一年？', '1840 年', '1911 年', '1919 年', '1949 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy034', '幸运52', '历史', '中华人民共和国成立于哪一年？', '1911 年', '1937 年', '1945 年', '1949 年', 'D')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy035', '幸运52', '历史', '唐朝的开国皇帝是？', '李世民', '李渊', '李隆基', '武则天', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy036', '幸运52', '历史', '五四运动发生在哪一年？', '1911 年', '1919 年', '1921 年', '1937 年', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy037', '幸运52', '历史', '秦始皇统一六国后，都城在？', '洛阳', '长安', '咸阳', '开封', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy038', '幸运52', '历史', '赤壁之战中，孙刘联军主要对抗的是？', '刘备', '孙权', '曹操', '董卓', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy039', '幸运52', '历史', '丝绸之路的东方起点，常用说法是？', '洛阳', '长安', '敦煌', '北京', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy041', '幸运52', '历史', '郑和下西洋发生在哪个朝代？', '唐朝', '宋朝', '明朝', '清朝', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy042', '幸运52', '地理', '长江最终流入哪个海？', '渤海', '黄海', '东海', '南海', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy045', '幸运52', '地理', '黄河注入哪个海？', '渤海', '黄海', '东海', '南海', 'A')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy047', '幸运52', '地理', '地球上面积最大的大洲是？', '非洲', '北美洲', '亚洲', '南极洲', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy048', '幸运52', '地理', '澳大利亚的首都是？', '悉尼', '墨尔本', '堪培拉', '布里斯班', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy049', '幸运52', '地理', '非洲最长的河流是？', '刚果河', '尼罗河', '赞比西河', '尼日尔河', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy050', '幸运52', '地理', '日本的首都是？', '大阪', '京都', '东京', '横滨', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy051', '幸运52', '地理', '泰山位于我国哪个省？', '山西', '河南', '山东', '陕西', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy053', '幸运52', '地理', '布达拉宫在哪个城市？', '西宁', '兰州', '拉萨', '成都', 'C')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;

INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES ('xy054', '幸运52', '地理', '万里长城东端起点常用说法是？', '嘉峪关', '山海关', '居庸关', '雁门关', 'B')
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;
COMMIT;
