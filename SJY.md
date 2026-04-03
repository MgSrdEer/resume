<link rel="stylesheet" type="text/css" href="assets/css/styles.css">

<h1 style="text-align: center">宋居易</h1>


<div style="text-align: center">
<span>
<img src="assets/phone-solid.svg" width="16" alt="电话">
17521561043
</span>
·
<span>
<img src="assets/envelope-solid.svg" width="16" alt="邮箱">
<a>1327898686@qq.com</a>
</span>
·
<span>
<img src="assets/rss-solid.svg" width="16" alt="博客">
<a href="https://gitee.com/mdsSJY">我的博客</a>
<a href="https://gitee.com/mdsSJY">https://gitee.com/mdsSJY</a>
</span>

</div> 



  
## <img src="assets/info-circle-solid.svg" width="30px"> 个人信息
<blockquote>
<div style="display:flex; display: flex; align-items:center;">
    <div style="flex: 2;">
      <ul>
      <li>男,1994/12/04</li>
      <li>工作经验：5年</li>
      <li>Gitee：<a href="https://gitee.com/mdsSJY">https://gitee.com/mdsSJY</a></li>
      <li>GitHub：<a href="https://github.com/MgSrdEer">https://github.com/MgSrdEer</a></li>
    </ul>
    </div>
    <div style="flex: 1; display: flex; justify-content: flex-end"><img src="assets/SJY_灰色.jpg" alt="头像" width="130" height="150"></div>
</div>
</blockquote>



## <img src="assets/briefcase-solid.svg" width="30px"> 工作经历

> - **法本信息技术，杭州网易外包（裁员），Agent 开发， `2026.1-2026.4`**
> - **上海凹酷凹酷智能科技，创业公司，全栈开发， `2025.4-2026.1`**
> - **纬创软件，驻场派遣开发，Java 后端， `2023.8-2025-4`**
> - **上海海隆信技软件，Java 开发， `2021.3-2021.7-2023.8`**


## <img src="assets/project-diagram-solid.svg" width="30px"> 项目经历
- **燕子服务号（燕云项目组面向策划的 AI 问答智能机器人）`2026.1-2026.4`**
> * 项目背景：
  基于 POPO 平台的 AI 智能客服系统，为燕云十六声项目团队提供自动化技术问答支持。整合 BrainMaker 低代码平台和大模型能力，实现知识库问答、问题查询、消息采集等功能。
> * 项目方案：
>   1. 基础问答：基于燕云十六声数据集检索 + LLM 生成，支持图文混合输入
>   2. 查询功能：解析用户输入，检索知识库并提取负责人信息
>   3. AI 自动采集：定时爬取群消息，AI 提取 Q&A 并自动上传知识库
> * 我的职责：
>   1. 架构设计：设计燕子服务号与燕子助理双产品架构，基于 BrainMaker Workflow 编排工作流
>   2. Workflow 开发：问答、查询、采集、图片转义 4 个核心工作流
>   3. 数据集管理：384 篇文档管理，Python API 实现程序化上传
>   4. 运维监控：定时任务配置，监控指标跟踪，问题排查优化
> * 技术栈：
>   POPO、BrainMaker（Workflow 引擎）、大语言模型、燕云十六声数据集（向量检索）、Python


- **AIGC 乙游项目 `2025.4-2026.1`**
> * 项目背景：
  基于当下的 AIGC 能力，项目初期构想是用 ai 生成具有左右分支可选择的一句话文字剧情，并同时生成对应人物的 tts（基于 minmax），并为 cg 添加呼吸动画。制作面向特定群体的女性用户的类乙女向游戏。
> * 项目方案：
>   1. 剧情 agent 设计：  
>       a. 根据用户输入，先进行用户意图推测，并补齐至规定的输入。  
>       b. 先生成故事剧情的章节目录。并让 ai 按每条目录逐个吐出一句话剧情带左右选项，分支都指向同一个下一个节点，每次生成会带上前面生成的概要作为上下文。  
>       c. 让 ai 在生成好的主链文本上，选择几处位置（或者随机选几个节点），然后获取开头到选中节点的文本，作为上下文生成分支接入主链。  
>       d. 遍历所有节点，生成 tts 语音，并入库。  
> * 我的职责：
>   1. 运维：  
docker, docker仓库环境搭建，certbot,nginx 反向代理，阿里云服务 cdn,oss，邮箱推送，短信推送，域名，CI/CD Jenkins。
>   2. 前端开发：   
cocos creator 3.8, 根据 figma 设计稿，实现游戏的前端界面。spine 实现呼吸动画。原本计划是只发布 ios，所以只针对 ios 进行了适配和原生功能开发。其中解决了如下问题：  
>       - cocos ts 部分写法在 ios 平台无效的问题。  
>       - ios 原生开发工作流，通过 jsb 调用 oc，oc 调用 swift 代码，实现 ios 原生功能。包括 storekit2 接入支付，ios 状态栏显示，ios 声音设置等问题。  
>       - cocos 热更新。  
>   3. 后端开发：    
>       - 数据服务，提供客户端获取数据的服务。基于 gin 框架，实现资源的工程管理。  
>         - websocket 实现客户端与服务端的实时通信。  
>         - 解决 ai 生成的音频资源与故事节点的通过 oss 储存后的映射问题。  
>         - uber.org/fx 工程化问题。  
>         - orm 低 sql 提升效率。  
>       - agent 服务，实现剧情生成 agent mvp 版本。  
>         - 基于 fastapi + 原生 openai api 实现。  
>         - 基于 celery，asyncio 解决需要后台等待 ai 生成的 io 密集型队列任务的问题。  
>       - 中间件：  
>           - redis, pgsql, mongodb, oss。  
>   4. ai 工作流工具链：  
>       - trae 需求不明朗需要迭代的项目使用，在我控制的架构下提炼小任务给 trae 完成，尽可能降低混乱，且我可以随时介入。  
>       - minimax-m2 需求明确，前端可以用 web 端满足的，且不太需要维护的项目使用。  
>       - apifox, NocoDB（数据库可视化工具）。  
>       - 国产大模型。  
> ✳ *演示连接（没有 mac 设备只打包 android 版本，没有做 android 适配以及对应的原生开发。目的仅演示。安卓手机浏览器打开该链接下载安装即可。提示并非恶意程序。）：[https://oss.sjy.asia/cocos/TheHeart-release.apk](https://oss.sjy.asia/cocos/TheHeart-release.apk)*



- **美团医美运营投流项目 `2024.6-2025-3`**
> * 项目背景：
  美团的医美组业务方，需求一个基于 AIGC 优化其在某书平台上投放笔记引流的运营能力。即想要一个可以自动生成某书笔记，只需要人审批就可以进行笔记批量投放的 AIGC 能力。
> * 项目方案：
  对该需求进行了工程化的拆解后设计了如下的 AI Agent 应用。
>    1. 自动化获取某书热点与热门笔记，并根据当前时间情景，分析出热点，总结出笔记创建方向，指导后续 agent 创作。
>    2. 基于获取到的热门笔记，提取一个笔记模板式样，提供给后续 agent 参考
>    3. 为降低大模型创作幻觉，将需求方提供的医美专业知识构建为 RAG，提供给大模型参考。
>    4. 获取 1,2,3 的结果后，构建 prompt，提交给大模型进行创作
>    5. 提供一个 web 交互页面。
> * 我的职责：
>  工程实现是基于美团内部的现有能力去实现，如 mdp 框架，Friday 大模型应用工厂。  
>  我主要完成了如下的工作：
>    1. 上述 1 中获得数据后构建分析热点方向的 agent，上述 2，3，4Agent 的实现，agent 实现基于 MDP 中内置的 SpringAi，和 Friday 大模型应用工厂。Rag 构建是基于美团的 ES 平台能力，ES v8 的向量库搭建的 RAG。
>    2. 完成了部分 web 交互页面，功能有，agent 入口，笔记生成查询。基于美团的 remo 和 talos 平台搭建。




- **智能语音客服项目 `2023.8-2024.6`**  
>   * *技术栈：*   
    springboot, MySql, Redis, Vue3+vite+Ts, .NETCore 
>  * _项目简介：_  
    这是`浦发信用卡中心`的一个`智能语音客服`项目，其中的一个功能`自动拨号与客户核实信用卡业务相关信息`。
  原本该功能是.NETCore 框架，因为浦发要求国产替代，所以统统全部重新架构审核，并按规定重新设计开发。
>  * _工作描述：_  
>   1. `文字处理服务`开发。  
   该服务的大致职责：  
>   ** `根据上游提供的用户信息、语音识别结果等，生成向客户提问，用于核实信息的统一业务 QA 话术。并提供给下游服务使用。`
>   2. `地址字符串分词服务`开发。  
   该服务的大致职责：  
   ** `根据提供的地址字符串，按定义进行分词。这是一个工具服务。`
>   3. `单位名称字符串分词服务`开发。  
   该服务的大致职责：  
   ** 同理。  
>   4. 后台工具开发。  
 ※`地址字符串分词服务`，`单位名称字符串分词服务`。  
 具体可以参考 [https://gitee.com/mdsSJY/addr-correct](https://gitee.com/mdsSJY/addr-correct)。  
> * `声明`：  
项目闭源，此展示也并非全部源码。此展示仅仅为了方便相关人对我个人的 coding 习惯有些许了解的依据，或提供相关人对我个人相关技术水平评价有所参考。    


- **对日外包项目 `2021.7-2023.8`**
>  * *技术栈：*  
   ObjectWorks＋框架，JBoss, Oracle, DB2, Pega 低代码量平台，html, js
>  * _项目简介：_   
>    1. 对日外包项目《全国健康保険》系统。这是一个保险业务相关的系统开发项目。  
>    2. 对日外包项目《TC 金融支付 BPM》系统。这是一个金融业务相关的系统开发项目。
>  * _工作描述：_  
   该段经历的项目属于大型多人开发的项目，我承担 PG 的角色职责。并履行了自己的职责。具体情况欢迎参考我的过往简历  
   [https://pan.baidu.com/s/1LBJArEsFsrqIBBloITW3eg?pwd=p8yc](https://pan.baidu.com/s/1LBJArEsFsrqIBBloITW3eg?pwd=p8yc)



- **我的个人项目 `业余时间`**  
  - **项目汇总**: [https://gitee.com/mdsSJY](https://gitee.com/mdsSJY)
  - **个人 Jenkins**: [https://jenkins.tools.sjy.asia/](https://jenkins.tools.sjy.asia/) (账号：look / 密码：123)
  - **作品集**:
    - [React Native 私人安卓 App https://gitee.com/mdsSJY/stock_RNExpoApp/releases/tag/v1.0.0](https://gitee.com/mdsSJY/stock_RNExpoApp/releases/tag/v1.0.0)
    - [Cocos Creator 安卓应用 https://oss.sjy.asia/cocos/TheHeart-release.apk](https://oss.sjy.asia/cocos/TheHeart-release.apk) (浏览器打开下载安装)
    - [Uniapp 微信小程序](https://gitee.com/mdsSJY/uniapp-case-template) (涉及金融，个人开发者无法展示后端)


        <div style="text-align:center">
          <img src="assets/tacn.png" width="150px">
        </div>


    - [Electron 工作流及模板https://gitee.com/mdsSJY/electron-actual/releases/tag/latest (可下载 EXE)](https://gitee.com/mdsSJY/electron-actual/releases/tag/latest)
    - [Vue3 演示 https://proficiencytestdemo.sjy.asia/](https://proficiencytestdemo.sjy.asia/)


  - **个人开发日志**: [https://gitee.com/mdsSJY/technical-logs](https://gitee.com/mdsSJY/technical-logs) (记录开发中的技术细节)




## <img src="assets/tools-solid.svg" width="30px"> 技术栈
- **后端**：
  - 非常熟悉 Java 以及 JDK 相关开发套件，Java 相关生态，后端相关中间件
  - 非常熟悉 Python，以及 Python 相关生态，开发脚手架
  - 熟悉 Golang，以及 Golang 相关生态，开发脚手架
  - 了解 C#，以及 C# 相关生态，开发脚手架
  - 根据开发需求了解什么时候应该用哪些中间件，包括但不限于 `PostgreSQL`、`OSS`、`Docker/Podman`、`Jenkins`、`Redis`、`RabbitMQ` 等
- **前端**：
  - 熟悉 `Vue3/React/nodejs/TypeScript/tailwindcss`, `ReactNative`, `Electron`, `Uniapp`,`Nextjs`，以及前端生态，开发脚手架
  - 熟悉 Cocos，以及了解一些基于 Cocos 的 iOS 原生开发和 Android 原生开发
- **AI 与低代码平台**：
  - 熟悉 BrainMaker/n8n 低代码平台（Workflow 引擎编排）
  - 熟悉大语言模型应用开发（LLM、RAG语义搜索、OpenAIApi、langchain、langgraph）
- **Tools**：`Git`、`Markdown`、`Make`、`Shell`、`Docker`、`IDE`、`Trae`、`minmax-m2`、`WireGuard`、`certbot`、`apifox`、`nginx`、`阿里云服务`、大语言模型 AI  
  实际工作中能够利用多家 AI 和搜索引擎独立解决全部遇到的开发问题


## <img src="assets/graduation-cap-solid.svg" width="30px"> 教育经历
> - 硕士，贵州民族大学，化学工程，2018.9~2021.6
> - 学士，渤海大学，应用化学，2013.9~2018.6
> - 日语：非常熟悉 (有 N1 证书，可作为工作语言，可听说读、输入法输入)
> - 英语：一般  
  
## <img src="assets/github-brands.svg" width="30px"> 自评与爱好  

> - 较强自学能力、Coding 时高度专注。
> - 狂热 Coding 爱好者，游戏爱好者，动漫爱好者，技术极客爱好者，[B 站](https://space.bilibili.com/1953921)
> - 我最近常看的技术博主 [@Voidmatrix](https://space.bilibili.com/25864506/?spm_id_from=333.999.0.0),[@IT 咖啡馆](https://space.bilibili.com/65564239/?spm_id_from=333.999.0.0),[@极海 Channel](https://space.bilibili.com/1525355?spm_id_from=333.337.0.0),[@水煮肉片饭](https://gitee.com/szrpf)
> - 我的 Trae 25 年年度报告飞书扫码可以查看 [https://pic1.imgdb.cn/item/69633ba075db907620f22e68.png](https://pic1.imgdb.cn/item/69633ba075db907620f22e68.png)
