/** @typedef {'A' | 'B' | 'C' | 'D'} Choice */

/**
 * @typedef {Object} Question
 * @property {string} id
 * @property {'常识' | '脑筋急转弯' | '历史' | '地理'} category
 * @property {string} stem
 * @property {{A: string, B: string, C: string, D: string}} options
 * @property {Choice} correct
 */

/** @type {Question[]} */
export const QUESTIONS = [
  {
    id: "q01",
    category: "常识",
    stem: "中华人民共和国的首都是？",
    options: { A: "上海", B: "北京", C: "广州", D: "南京" },
    correct: "B",
  },
  {
    id: "q02",
    category: "常识",
    stem: "一年有几个季度？",
    options: { A: "三个", B: "四个", C: "六个", D: "十二个" },
    correct: "B",
  },
  {
    id: "q03",
    category: "常识",
    stem: "交通信号灯里表示「停」的是哪种颜色？",
    options: { A: "绿色", B: "黄色", C: "红色", D: "蓝色" },
    correct: "C",
  },
  {
    id: "q04",
    category: "常识",
    stem: "太阳从哪个方向升起？",
    options: { A: "东", B: "西", C: "南", D: "北" },
    correct: "A",
  },
  {
    id: "q05",
    category: "常识",
    stem: "标准大气压下，水的沸点大约是多少摄氏度？",
    options: { A: "0 度", B: "50 度", C: "80 度", D: "100 度" },
    correct: "D",
  },
  {
    id: "q06",
    category: "常识",
    stem: "奥运会通常每隔几年举办一届？",
    options: { A: "两年", B: "三年", C: "四年", D: "五年" },
    correct: "C",
  },
  {
    id: "q07",
    category: "常识",
    stem: "人体正常体温大约是多少摄氏度？",
    options: { A: "35 度", B: "36 到 37 度", C: "39 度", D: "42 度" },
    correct: "B",
  },
  {
    id: "q08",
    category: "常识",
    stem: "一星期有几天？",
    options: { A: "五天", B: "六天", C: "七天", D: "十天" },
    correct: "C",
  },
  {
    id: "q09",
    category: "常识",
    stem: "《红楼梦》的作者传统上认为是？",
    options: { A: "施耐庵", B: "罗贯中", C: "曹雪芹", D: "吴承恩" },
    correct: "C",
  },
  {
    id: "q10",
    category: "脑筋急转弯",
    stem: "什么瓜不能吃？",
    options: { A: "冬瓜", B: "傻瓜", C: "南瓜", D: "西瓜" },
    correct: "B",
  },
  {
    id: "q11",
    category: "脑筋急转弯",
    stem: "什么门永远关不上？",
    options: { A: "铁门", B: "球门", C: "木门", D: "防盗门" },
    correct: "B",
  },
  {
    id: "q12",
    category: "脑筋急转弯",
    stem: "什么东西越洗越脏？",
    options: { A: "衣服", B: "手", C: "水", D: "碗" },
    correct: "C",
  },
  {
    id: "q13",
    category: "脑筋急转弯",
    stem: "小明的妈妈有三个孩子：大毛、二毛，第三个叫什么？",
    options: { A: "三毛", B: "小毛", C: "小明", D: "明明" },
    correct: "C",
  },
  {
    id: "q14",
    category: "脑筋急转弯",
    stem: "什么车不能开？",
    options: { A: "火车", B: "风车", C: "汽车", D: "马车" },
    correct: "B",
  },
  {
    id: "q15",
    category: "脑筋急转弯",
    stem: "什么海没有水？",
    options: { A: "东海", B: "人海", C: "南海", D: "渤海" },
    correct: "B",
  },
  {
    id: "q16",
    category: "脑筋急转弯",
    stem: "什么东西天天吃却吃不完？",
    options: { A: "饭", B: "日子", C: "水果", D: "零食" },
    correct: "B",
  },
  {
    id: "q17",
    category: "脑筋急转弯",
    stem: "什么帽不能戴？",
    options: { A: "草帽", B: "螺帽", C: "棉帽", D: "军帽" },
    correct: "B",
  },
  {
    id: "q18",
    category: "脑筋急转弯",
    stem: "什么井没有水？",
    options: { A: "水井", B: "天井", C: "油井", D: "深井" },
    correct: "B",
  },
  {
    id: "q19",
    category: "历史",
    stem: "辛亥革命爆发于哪一年？",
    options: { A: "1840 年", B: "1911 年", C: "1919 年", D: "1949 年" },
    correct: "B",
  },
  {
    id: "q20",
    category: "历史",
    stem: "中华人民共和国成立于哪一年？",
    options: { A: "1911 年", B: "1937 年", C: "1945 年", D: "1949 年" },
    correct: "D",
  },
  {
    id: "q21",
    category: "历史",
    stem: "唐朝的开国皇帝是？",
    options: { A: "李世民", B: "李渊", C: "李隆基", D: "武则天" },
    correct: "B",
  },
  {
    id: "q22",
    category: "历史",
    stem: "五四运动发生在哪一年？",
    options: { A: "1911 年", B: "1919 年", C: "1921 年", D: "1937 年" },
    correct: "B",
  },
  {
    id: "q23",
    category: "历史",
    stem: "秦始皇统一六国后，都城在？",
    options: { A: "洛阳", B: "长安", C: "咸阳", D: "开封" },
    correct: "C",
  },
  {
    id: "q24",
    category: "历史",
    stem: "赤壁之战中，孙刘联军主要对抗的是？",
    options: { A: "刘备", B: "孙权", C: "曹操", D: "董卓" },
    correct: "C",
  },
  {
    id: "q25",
    category: "历史",
    stem: "丝绸之路的东方起点，常用说法是？",
    options: { A: "洛阳", B: "长安", C: "敦煌", D: "北京" },
    correct: "B",
  },
  {
    id: "q26",
    category: "历史",
    stem: "中国共产党成立于哪一年？",
    options: { A: "1911 年", B: "1919 年", C: "1921 年", D: "1949 年" },
    correct: "C",
  },
  {
    id: "q27",
    category: "历史",
    stem: "郑和下西洋发生在哪个朝代？",
    options: { A: "唐朝", B: "宋朝", C: "明朝", D: "清朝" },
    correct: "C",
  },
  {
    id: "q28",
    category: "地理",
    stem: "长江最终流入哪个海？",
    options: { A: "渤海", B: "黄海", C: "东海", D: "南海" },
    correct: "C",
  },
  {
    id: "q29",
    category: "地理",
    stem: "世界最高峰是？",
    options: { A: "乔戈里峰", B: "珠穆朗玛峰", C: "贡嘎山", D: "乞力马扎罗" },
    correct: "B",
  },
  {
    id: "q30",
    category: "地理",
    stem: "中国面积最大的省级行政区是？",
    options: { A: "西藏", B: "内蒙古", C: "青海", D: "新疆" },
    correct: "D",
  },
  {
    id: "q31",
    category: "地理",
    stem: "黄河注入哪个海？",
    options: { A: "渤海", B: "黄海", C: "东海", D: "南海" },
    correct: "A",
  },
  {
    id: "q32",
    category: "地理",
    stem: "中国最大的淡水湖是？",
    options: { A: "青海湖", B: "鄱阳湖", C: "洞庭湖", D: "太湖" },
    correct: "B",
  },
  {
    id: "q33",
    category: "地理",
    stem: "地球上面积最大的大洲是？",
    options: { A: "非洲", B: "北美洲", C: "亚洲", D: "南极洲" },
    correct: "C",
  },
  {
    id: "q34",
    category: "地理",
    stem: "澳大利亚的首都是？",
    options: { A: "悉尼", B: "墨尔本", C: "堪培拉", D: "布里斯班" },
    correct: "C",
  },
  {
    id: "q35",
    category: "地理",
    stem: "非洲最长的河流是？",
    options: { A: "刚果河", B: "尼罗河", C: "赞比西河", D: "尼日尔河" },
    correct: "B",
  },
  {
    id: "q36",
    category: "地理",
    stem: "日本的首都是？",
    options: { A: "大阪", B: "京都", C: "东京", D: "横滨" },
    correct: "C",
  },
];

/** @param {number} n */
export function pickQuestionIds(n) {
  const ids = QUESTIONS.map((q) => q.id);
  for (let i = ids.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [ids[i], ids[j]] = [ids[j], ids[i]];
  }
  return ids.slice(0, n);
}

/** @param {string} id */
export function getQuestion(id) {
  const found = QUESTIONS.find((q) => q.id === id);
  if (!found) throw new Error(`unknown question ${id}`);
  return found;
}

/** @param {Question} question */
export function toPublicQuestion(question) {
  return {
    id: question.id,
    category: question.category,
    stem: question.stem,
    options: question.options,
  };
}
