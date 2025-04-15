.class public Landroid/taobao/windvane/config/WVUrlMatchUtils;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;,
        Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;
    }
.end annotation


# static fields
.field private static final ACTION_CODE:Ljava/lang/String; = "urlMatchFailed"

.field private static final ALARM_EVENT_ID:I = 0xffdd

.field private static final DEFAULT_API_GROUPS:Ljava/lang/String; = "{\n\"Group_All\":[\"*\"],\n\"Group_None\":[]\n}"

.field private static final DEFAULT_PORT:[I

.field private static final DEFAULT_SCHEME:[Ljava/lang/String;

.field private static final DEFAULT_URL_PATTERNS:Ljava/lang/String; = "{\"//*.taobao.com\":\"1\",\"//*.tmall.com\":\"1\",\"//*.juhuasuan.com\":\"1\",\"//*.xiami.com\":\"1\",\"//*.amap.com\":\"1\",\"//*.taobaocdn.com\":\"1\",\"//*.alipay.com\":\"1\",\"//*.etao.com\":\"1\",\"//*.alibaba.com\":\"1\",\"//*.aliyun.com\":\"1\",\"//*.alimama.com\":\"1\",\"//*.weibo.com\":\"1\",\"//*.tanx.com\":\"1\",\"//*.laiwang.com\":\"1\",\"//*.alicdn.com\":\"1\",\"//*.mmstat.com\":\"1\",\"//*.yunos.com\":\"1\",\"//*.alibaba-inc.com\":\"1\",\"//*.alitrip.com\":\"1\",\"//*.aliloan.com\":\"1\",\"//*.kanbox.com\":\"1\",\"//*.wirlesshare.com\":\"1\",\"//*.dingtalk.com\":\"1\",\"//*.alimei.com\":\"1\",\"//*.cnzz.com\":\"1\",\"//*.kuaidadi.com\":\"1\",\"//*.autonavi.com\":\"1\",\"//*.m.yintai.com\":\"1\",\"//*.polyinno.com\":\"1\",\"//*.spdyidea.com\":\"1\",\"//*.h5util.com\":\"1\",\"//*.h5tool.com\":\"1\",\"//*.5945i.com\":\"1\",\"//*.miaostreet.com\":\"1\",\"//*.1688.com\":\"1\",\"//*.tb.cn\":\"1\",\"//*.tbcdn.cn\":\"1\",\"//*.weibo.cn\":\"1\",\"//*.mashort.cn\":\"1\",\"//*.uc.cn\":\"1\",\"//*.fastidea.me\":\"1\",\"//*.fastidea.cc\":\"1\",\"//*.juzone.me\":\"1\",\"//*.juzone.cc\":\"1\",\"//*.lwurl.to\":\"1\",\"//*.taobao.net\":\"1\",\"//*.yao.95095.com\":\"1\",\"//*.tmall.hk\":\"1\",\"//*.ahd.so\":\"1\",\"//*.atb.so\":\"1\",\"//*.mshare.cc\":\"1\",\"//*.juhs.me\":\"1\",\"//*.xianyu.mobi\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.cainiao.com\":\"1\",\"//*.taohua.com\":\"1\",\"//*.m.jiaoyimao.com\":\"1\",\"//*.mashangfangxin.com\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.im.alisoft.com\":\"1\",\"//*.100x100w.com\":\"1\",\"//*.koubei.com\":\"1\",\"//*.alibabausercontent.com\":\"1\",\"//*.hemaos.com\":\"1\",\"//*.jishi.rantu.com\":\"1\",\"//*.cdn.rantu.com\":\"1\",\"//*.ishuqi.com\":\"1\",\"//*.jishi.aligames.com\":\"1\",\"//*.aligames.com\":\"1\",\"//*.mp.dfkhgj.com\":\"1\",\"//*.mp.iuynfg.com\":\"1\",\"//*.mp.edcdfg.com\":\"1\",\"//*.mp.asczwa.com\":\"1\",\"//*.duanqu.com\":\"1\",\"//*.y.xevddy.com\":\"1\",\"//*.l.xevddy.com\":\"1\",\"//*.portalpro.hemaos.com\":\"1\",\"//*.liangxinyao.com\":\"1\",\"//*.taopiaopiao.com\":\"1\",\"//*.fliggy.com\":\"1\",\"//*.m.edcdfg.com\":\"1\",\"//*.feizhu.com\":\"1\",\"//*.youku.com\":\"1\",\"//*.mybank.cn\":\"1\",\"//*.alios.cn\":\"1\",\"//*.alihealth.cn\":\"1\",\"//*.xixi.fullspeed.cn\":\"1\",\"//*.image.9game.cn\":\"1\",\"//*.damai.cn\":\"1\",\"//*.feizhu.cn\":\"1\",\"//*.alpay.net\":\"1\",\"//*.cnzz.net\":\"1\",\"//*.fliggy.net\":\"1\",\"//*.feizhu.net\":\"1\",\"//*.tmall.net\":\"1\",\"//*.tdd.la\":\"1\",\"//*.tdd.la\":\"1\",\"//*.alipay.hk\":\"1\",\"//*.fliggy.hk\":\"1\",\"//*.ynuf.aliapp.org\":\"1\",\"//*.doctoryou.ai\":\"1\",\"//*.ele.me\":\"1\",\"//*.alipay.net\":\"1\",\"//*.wegame-web-daily.uc.test\":\"1\",\"//*.m.10010.com/queen/alitrip/alipay.html\":\"1\",\"//*.5317wan.com\":\"2\",\"//*.guahao.com\":\"2\",\"//*.wap.wandafilm.com\":\"2\",\"//*.wrating.com\":\"2\",\"//*.alipayobjects.com\":\"2\",\"//*.jmt.wxcsgd.com\":\"2\",\"//*.mpay.cx580.com\":\"2\",\"//*.mt.locojoy.com\":\"2\",\"//*.cpa1.locojoy.com\":\"2\",\"//*.miiee.com\":\"2\",\"//*.imaijia.com\":\"2\",\"//*.h5.edaijia.cn\":\"2\",\"//*.beta.library.sh.cn\":\"2\",\"//*.web.chelaile.net.cn\":\"2\",\"//*.app3.shmzj.gov.cn\":\"2\",\"//*.bsfw.qingdao.gov.cn\":\"2\",\"//*.www.hzpolice.gov.cn\":\"2\",\"//*.www.sxgajj.gov.cn\":\"2\",\"//*.service.zjzwfw.gov.cn\":\"2\",\"//*.people.com.cn\":\"2\",\"//*.hbjg.premier-tech.cn\":\"2\",\"//*.aliplay.net\":\"2\",\"//*.ali.hk515.net\":\"2\",\"//*.tmall.pp.cc\":\"2\"}"

.field private static final DEFAULT_URL_RULES:Ljava/lang/String; = "{\"1\":{\"open\":\"allow\",\"api\":\"Group_All\",\"allowaccess\":\"false\"},\n\"2\":{\"open\":\"allow\",\"api\":\"Group_None\",\"allowaccess\":\"true\"},\n\"6\":{\"open\":\"forbidden\",\"api\":\"Group_None\",\"allowaccess\":\"false\"}\n}"

.field private static final FLAG_GRAVITY:I = -0x1

.field private static final HOST_GRAVITY:I = 0x3e8

.field private static final MODULE_NAME:Ljava/lang/String; = "WindVane"

.field private static final PATH_GRAVITY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "URLMATCHER"

.field private static volatile urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;


# instance fields
.field private apiGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private customSetted:Z

.field private domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

.field private isLoadAppMonitor:Z

.field private mIJsApiPermissionCheck:Landroid/taobao/windvane/config/IJsApiPermissionCheck;

.field private mIUrlPermissionCheck:Landroid/taobao/windvane/config/IUrlPermissionCheck;

.field private urlRulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_PORT:[I

    const-string v0, "http"

    const-string v1, "https"

    const-string/jumbo v2, "taobao"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_SCHEME:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    return-void

    nop

    :array_0
    .array-data 4
        0x50
        0x1bb
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIUrlPermissionCheck:Landroid/taobao/windvane/config/IUrlPermissionCheck;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIJsApiPermissionCheck:Landroid/taobao/windvane/config/IJsApiPermissionCheck;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->customSetted:Z

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    const/4 v1, 0x1

    .line 6
    :try_start_0
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    const-string v0, "URLMATCHER"

    const-string v2, ""

    .line 8
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private computeGravitySum(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_2
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;
    .locals 6

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVUrlMatchUtils;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    .line 5
    sget-object v1, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    const-string/jumbo v2, "{\"//*.taobao.com\":\"1\",\"//*.tmall.com\":\"1\",\"//*.juhuasuan.com\":\"1\",\"//*.xiami.com\":\"1\",\"//*.amap.com\":\"1\",\"//*.taobaocdn.com\":\"1\",\"//*.alipay.com\":\"1\",\"//*.etao.com\":\"1\",\"//*.alibaba.com\":\"1\",\"//*.aliyun.com\":\"1\",\"//*.alimama.com\":\"1\",\"//*.weibo.com\":\"1\",\"//*.tanx.com\":\"1\",\"//*.laiwang.com\":\"1\",\"//*.alicdn.com\":\"1\",\"//*.mmstat.com\":\"1\",\"//*.yunos.com\":\"1\",\"//*.alibaba-inc.com\":\"1\",\"//*.alitrip.com\":\"1\",\"//*.aliloan.com\":\"1\",\"//*.kanbox.com\":\"1\",\"//*.wirlesshare.com\":\"1\",\"//*.dingtalk.com\":\"1\",\"//*.alimei.com\":\"1\",\"//*.cnzz.com\":\"1\",\"//*.kuaidadi.com\":\"1\",\"//*.autonavi.com\":\"1\",\"//*.m.yintai.com\":\"1\",\"//*.polyinno.com\":\"1\",\"//*.spdyidea.com\":\"1\",\"//*.h5util.com\":\"1\",\"//*.h5tool.com\":\"1\",\"//*.5945i.com\":\"1\",\"//*.miaostreet.com\":\"1\",\"//*.1688.com\":\"1\",\"//*.tb.cn\":\"1\",\"//*.tbcdn.cn\":\"1\",\"//*.weibo.cn\":\"1\",\"//*.mashort.cn\":\"1\",\"//*.uc.cn\":\"1\",\"//*.fastidea.me\":\"1\",\"//*.fastidea.cc\":\"1\",\"//*.juzone.me\":\"1\",\"//*.juzone.cc\":\"1\",\"//*.lwurl.to\":\"1\",\"//*.taobao.net\":\"1\",\"//*.yao.95095.com\":\"1\",\"//*.tmall.hk\":\"1\",\"//*.ahd.so\":\"1\",\"//*.atb.so\":\"1\",\"//*.mshare.cc\":\"1\",\"//*.juhs.me\":\"1\",\"//*.xianyu.mobi\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.cainiao.com\":\"1\",\"//*.taohua.com\":\"1\",\"//*.m.jiaoyimao.com\":\"1\",\"//*.mashangfangxin.com\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.im.alisoft.com\":\"1\",\"//*.100x100w.com\":\"1\",\"//*.koubei.com\":\"1\",\"//*.alibabausercontent.com\":\"1\",\"//*.hemaos.com\":\"1\",\"//*.jishi.rantu.com\":\"1\",\"//*.cdn.rantu.com\":\"1\",\"//*.ishuqi.com\":\"1\",\"//*.jishi.aligames.com\":\"1\",\"//*.aligames.com\":\"1\",\"//*.mp.dfkhgj.com\":\"1\",\"//*.mp.iuynfg.com\":\"1\",\"//*.mp.edcdfg.com\":\"1\",\"//*.mp.asczwa.com\":\"1\",\"//*.duanqu.com\":\"1\",\"//*.y.xevddy.com\":\"1\",\"//*.l.xevddy.com\":\"1\",\"//*.portalpro.hemaos.com\":\"1\",\"//*.liangxinyao.com\":\"1\",\"//*.taopiaopiao.com\":\"1\",\"//*.fliggy.com\":\"1\",\"//*.m.edcdfg.com\":\"1\",\"//*.feizhu.com\":\"1\",\"//*.youku.com\":\"1\",\"//*.mybank.cn\":\"1\",\"//*.alios.cn\":\"1\",\"//*.alihealth.cn\":\"1\",\"//*.xixi.fullspeed.cn\":\"1\",\"//*.image.9game.cn\":\"1\",\"//*.damai.cn\":\"1\",\"//*.feizhu.cn\":\"1\",\"//*.alpay.net\":\"1\",\"//*.cnzz.net\":\"1\",\"//*.fliggy.net\":\"1\",\"//*.feizhu.net\":\"1\",\"//*.tmall.net\":\"1\",\"//*.tdd.la\":\"1\",\"//*.tdd.la\":\"1\",\"//*.alipay.hk\":\"1\",\"//*.fliggy.hk\":\"1\",\"//*.ynuf.aliapp.org\":\"1\",\"//*.doctoryou.ai\":\"1\",\"//*.ele.me\":\"1\",\"//*.alipay.net\":\"1\",\"//*.wegame-web-daily.uc.test\":\"1\",\"//*.m.10010.com/queen/alitrip/alipay.html\":\"1\",\"//*.5317wan.com\":\"2\",\"//*.guahao.com\":\"2\",\"//*.wap.wandafilm.com\":\"2\",\"//*.wrating.com\":\"2\",\"//*.alipayobjects.com\":\"2\",\"//*.jmt.wxcsgd.com\":\"2\",\"//*.mpay.cx580.com\":\"2\",\"//*.mt.locojoy.com\":\"2\",\"//*.cpa1.locojoy.com\":\"2\",\"//*.miiee.com\":\"2\",\"//*.imaijia.com\":\"2\",\"//*.h5.edaijia.cn\":\"2\",\"//*.beta.library.sh.cn\":\"2\",\"//*.web.chelaile.net.cn\":\"2\",\"//*.app3.shmzj.gov.cn\":\"2\",\"//*.bsfw.qingdao.gov.cn\":\"2\",\"//*.www.hzpolice.gov.cn\":\"2\",\"//*.www.sxgajj.gov.cn\":\"2\",\"//*.service.zjzwfw.gov.cn\":\"2\",\"//*.people.com.cn\":\"2\",\"//*.hbjg.premier-tech.cn\":\"2\",\"//*.aliplay.net\":\"2\",\"//*.ali.hk515.net\":\"2\",\"//*.tmall.pp.cc\":\"2\"}"

    const-string/jumbo v3, "{\"1\":{\"open\":\"allow\",\"api\":\"Group_All\",\"allowaccess\":\"false\"},\n\"2\":{\"open\":\"allow\",\"api\":\"Group_None\",\"allowaccess\":\"true\"},\n\"6\":{\"open\":\"forbidden\",\"api\":\"Group_None\",\"allowaccess\":\"false\"}\n}"

    const-string/jumbo v4, "{\n\"Group_All\":[\"*\"],\n\"Group_None\":[]\n}"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    return-object v0
.end method

.method private insertToTrieTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 1
    iget-object v1, p2, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iget-object p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    goto :goto_1

    .line 6
    :cond_1
    new-instance v5, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v5, p0, v4, v6}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;-><init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    iget-object p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p2, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    iget-object p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    goto :goto_3

    .line 12
    :cond_3
    new-instance v4, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, p0, v3, v5}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;-><init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    iget-object p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p1, p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->setGroup(Ljava/lang/String;)V

    .line 15
    iget-object p3, p2, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->setScheme(Ljava/lang/String;)V

    .line 16
    iget p2, p2, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->setPort(I)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_4
    const-string p1, "URLMATCHER"

    const-string p2, "insertToTrieTree: \u63d2\u5165\u8282\u70b9\u6709\u8bef\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e\uff01"

    .line 17
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private parseUrl(Ljava/lang/String;)Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;
    .locals 10

    const-string/jumbo v0, "\u89e3\u6790URL\u51fa\u73b0\u9519\u8bef"

    const-string/jumbo v1, "urlMatchFailed"

    const-string v2, "WindVane"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "URLMATCHER"

    if-eqz v3, :cond_0

    const-string p1, "dropUrl: \u8f93\u5165\u7684URL\u4e3a\u7a7a!!"

    .line 2
    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 3
    :cond_0
    new-instance v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;-><init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-le v6, v7, :cond_1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_SCHEME:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    const-string/jumbo v7, "parseUrl: \u89e3\u6790URL\u51fa\u73b0\u9519\u8bef"

    .line 7
    invoke-static {v5, v7}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    iget-boolean v6, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz v6, :cond_2

    const-string v6, "6"

    .line 10
    invoke-static {v2, v1, p1, v6, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v6, v4

    .line 11
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    .line 12
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->reverseStrArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    .line 15
    array-length v1, p1

    if-lez v1, :cond_4

    aget-object p1, p1, v8

    const-string v1, ""

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    aput-object v0, p1, v8

    .line 17
    :cond_4
    iget-object p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_5

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    .line 19
    :cond_5
    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    sget-object p1, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_PORT:[I

    aget p1, p1, v8

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result p1

    :goto_1
    iput p1, v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    return-object v3

    :cond_7
    :goto_2
    const-string/jumbo v3, "parseUrl: \u8f93\u5165\u7684URL\u4e0d\u7b26\u5408\u89c4\u8303"

    .line 20
    invoke-static {v5, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-boolean v3, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz v3, :cond_8

    const-string v3, "7"

    .line 22
    invoke-static {v2, v1, p1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v4
.end method

.method public static reverseStrArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    aget-object v2, p0, v0

    .line 4
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 5
    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const-string p0, "URLMATCHER"

    const-string/jumbo v0, "reverseStrArray:\u8f93\u5165\u53c2\u6570\u4e3a\u7a7a"

    .line 6
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private reverseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URLMATCHER"

    const-string/jumbo v0, "reverseUrl: \u8f93\u5165\u7684URL\u4e3a\u7a7a"

    .line 2
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;",
            "Z",
            "Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v0, p5

    move-object/from16 v11, p6

    if-eqz v8, :cond_e

    if-nez v9, :cond_0

    goto/16 :goto_7

    .line 1
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$000(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "/"

    const-string v13, "*"

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 2
    iget-object v1, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v7, v8, v9}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->checkSchemeAndPort(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    invoke-static {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    invoke-virtual {v7, v8, v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->checkSchemeAndPort(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    invoke-static {v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$000(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v7, v8, v9}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->checkSchemeAndPort(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {p3 .. p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_5

    .line 13
    iget-object v1, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 14
    iget-object v1, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v16, 0x1

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_6

    .line 16
    iget-object v1, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    const/16 v18, 0x0

    goto :goto_1

    :cond_6
    move/from16 v17, p2

    move/from16 v18, v0

    .line 17
    :goto_1
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v4, p4

    move/from16 v5, v18

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V

    add-int/lit8 v18, v18, -0x1

    if-gez v18, :cond_7

    .line 18
    iget-object v0, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    move/from16 v0, v18

    .line 19
    :goto_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move/from16 v17, p2

    :goto_3
    move/from16 v18, v0

    .line 20
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    const-string v6, "+"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v17, :cond_9

    const/16 v17, 0x0

    const/16 v19, 0x1

    goto :goto_4

    .line 21
    :cond_9
    iget-object v0, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v0, v0

    move/from16 v19, v17

    move/from16 v17, v0

    .line 22
    :goto_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v4, p4

    move/from16 v5, v17

    move-object v15, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V

    .line 24
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v17, :cond_a

    const/16 v19, 0x0

    :cond_a
    move/from16 v2, v19

    goto :goto_5

    :cond_b
    move/from16 v2, v17

    .line 25
    :goto_5
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v2, :cond_c

    if-nez v18, :cond_c

    .line 26
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v5, v18

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V

    .line 29
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 30
    :cond_d
    iget-object v0, v8, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v0, v0

    move v5, v0

    .line 31
    :goto_6
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, v9, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V

    .line 33
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    return-void
.end method


# virtual methods
.method public checkJsApiPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "*"

    .line 1
    iget-object v1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIJsApiPermissionCheck:Landroid/taobao/windvane/config/IJsApiPermissionCheck;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p1, p2, p3}, Landroid/taobao/windvane/config/IJsApiPermissionCheck;->checkJsApiPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "URLMATCHER"

    const/4 v3, 0x0

    if-nez v1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->apiGroupMap:Ljava/util/Map;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "api"

    .line 5
    invoke-virtual {p0, p1, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "checkApiPermission: \u672a\u80fd\u6b63\u786e\u83b7\u53d6api\u6743\u9650\u7ec4"

    .line 7
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 8
    :cond_3
    iget-object v1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->apiGroupMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 11
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    return v5

    :cond_5
    const/16 v4, 0x2e

    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_7

    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v5

    .line 16
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_7

    return v5

    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return v3

    :cond_9
    :goto_2
    const-string p1, "checkApiPermission: apiGroup\u914d\u7f6e\u4e0d\u5e94\u4e3a\u7a7a!"

    .line 18
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_a
    :goto_3
    const-string p1, "checkApiPermission: \u8f93\u5165\u53c2\u6570\u4e3a\u7a7a!"

    .line 19
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method checkSchemeAndPort(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_SCHEME:[Ljava/lang/String;

    aget-object v3, v2, v0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    array-length v1, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v2, v4

    .line 3
    iget-object v6, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    return v0

    .line 4
    :cond_3
    iget-object v1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 5
    :cond_4
    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getPort()I

    move-result v1

    sget-object v2, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_PORT:[I

    aget v4, v2, v0

    if-ne v1, v4, :cond_7

    .line 6
    array-length p2, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_6

    aget v4, v2, v1

    .line 7
    iget v5, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    if-ne v4, v5, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    return v0

    .line 8
    :cond_7
    iget p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getPort()I

    move-result p2

    if-eq p1, p2, :cond_8

    return v0

    :cond_8
    return v3

    :cond_9
    :goto_4
    return v0
.end method

.method public getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIUrlPermissionCheck:Landroid/taobao/windvane/config/IUrlPermissionCheck;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/config/IUrlPermissionCheck;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "URLMATCHER"

    if-nez v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlRulesMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "open"

    .line 6
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "allow"

    if-eqz v3, :cond_5

    const-string v3, "javascript:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "about:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    return-object v4

    .line 7
    :cond_5
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->searchUrlForGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "getUrlPermissionInfo: \u8be5url\u672a\u5728\u914d\u7f6e\u5185\uff0c\u7981\u6b62\u8bbf\u95ee!"

    .line 9
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_6
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlRulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrlPermissionInfo: \u672a\u5728\u6743\u9650\u7ec4:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2d\u627e\u5230\u6743\u9650:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u7684\u914d\u7f6e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_8
    return-object v0

    .line 15
    :cond_9
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUrlPermissionInfo: \u672a\u80fd\u627e\u5230\u6743\u9650\u7ec4:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u7684\u914d\u7f6e,\u8bf7\u68c0\u67e5\u914d\u7f6e!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "urlMatchFailed"

    const-string v5, "WindVane"

    if-eqz v0, :cond_b

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u83b7\u53d6open\u6743\u9650\u65f6\uff0c\u51fa\u73b0\u5339\u914d\u9519\u8bef\uff0c\u5df2\u5141\u8bb8\u8be5URL\u6253\u5f00\uff0curl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz p2, :cond_a

    const-string p2, "4"

    const-string/jumbo v0, "\u83b7\u53d6open\u6743\u9650\u65f6\uff0c\u51fa\u73b0\u5339\u914d\u9519\u8bef\uff0c\u5df2\u5141\u8bb8\u8be5URL\u6253\u5f00"

    .line 20
    invoke-static {v5, v3, p1, p2, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v4

    .line 21
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u83b7\u53d6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6743\u9650\u65f6\u51fa\u73b0\u9519\u8bef\uff0curl:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz v0, :cond_c

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u6743\u9650\u65f6\uff0c\u51fa\u73b0\u5339\u914d\u9519\u8bef"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "5"

    invoke-static {v5, v3, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v1

    :cond_d
    :goto_1
    const-string p1, "getUrlPermissionInfo: urlRules\u914d\u7f6e\u4e0d\u5e94\u4e3a\u7a7a!"

    .line 24
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e
    :goto_2
    const-string p1, "getUrlPermissionInfo: URL\u914d\u7f6e\u4e0d\u5e94\u4e3a\u7a7a!"

    .line 25
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    :goto_3
    const-string p1, "getUrlPermissionInfo: \u8f93\u5165\u53c2\u6570\u4e3a\u7a7a!"

    .line 26
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isAllowAllOpen(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    const-string/jumbo v1, "open"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allowAll"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAllowOpen(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    const-string/jumbo v1, "open"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allow"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBrowserOpen(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    const-string/jumbo v1, "open"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allow"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "allowAll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "forbidden"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isForbiddenOpen(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    const-string/jumbo v1, "open"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getUrlPermissionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "forbidden"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetConfig()V
    .locals 5

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcher:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    const-string/jumbo v1, "{\"//*.taobao.com\":\"1\",\"//*.tmall.com\":\"1\",\"//*.juhuasuan.com\":\"1\",\"//*.xiami.com\":\"1\",\"//*.amap.com\":\"1\",\"//*.taobaocdn.com\":\"1\",\"//*.alipay.com\":\"1\",\"//*.etao.com\":\"1\",\"//*.alibaba.com\":\"1\",\"//*.aliyun.com\":\"1\",\"//*.alimama.com\":\"1\",\"//*.weibo.com\":\"1\",\"//*.tanx.com\":\"1\",\"//*.laiwang.com\":\"1\",\"//*.alicdn.com\":\"1\",\"//*.mmstat.com\":\"1\",\"//*.yunos.com\":\"1\",\"//*.alibaba-inc.com\":\"1\",\"//*.alitrip.com\":\"1\",\"//*.aliloan.com\":\"1\",\"//*.kanbox.com\":\"1\",\"//*.wirlesshare.com\":\"1\",\"//*.dingtalk.com\":\"1\",\"//*.alimei.com\":\"1\",\"//*.cnzz.com\":\"1\",\"//*.kuaidadi.com\":\"1\",\"//*.autonavi.com\":\"1\",\"//*.m.yintai.com\":\"1\",\"//*.polyinno.com\":\"1\",\"//*.spdyidea.com\":\"1\",\"//*.h5util.com\":\"1\",\"//*.h5tool.com\":\"1\",\"//*.5945i.com\":\"1\",\"//*.miaostreet.com\":\"1\",\"//*.1688.com\":\"1\",\"//*.tb.cn\":\"1\",\"//*.tbcdn.cn\":\"1\",\"//*.weibo.cn\":\"1\",\"//*.mashort.cn\":\"1\",\"//*.uc.cn\":\"1\",\"//*.fastidea.me\":\"1\",\"//*.fastidea.cc\":\"1\",\"//*.juzone.me\":\"1\",\"//*.juzone.cc\":\"1\",\"//*.lwurl.to\":\"1\",\"//*.taobao.net\":\"1\",\"//*.yao.95095.com\":\"1\",\"//*.tmall.hk\":\"1\",\"//*.ahd.so\":\"1\",\"//*.atb.so\":\"1\",\"//*.mshare.cc\":\"1\",\"//*.juhs.me\":\"1\",\"//*.xianyu.mobi\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.cainiao.com\":\"1\",\"//*.taohua.com\":\"1\",\"//*.m.jiaoyimao.com\":\"1\",\"//*.mashangfangxin.com\":\"1\",\"//*.cainiao-inc.com\":\"1\",\"//*.im.alisoft.com\":\"1\",\"//*.100x100w.com\":\"1\",\"//*.koubei.com\":\"1\",\"//*.alibabausercontent.com\":\"1\",\"//*.hemaos.com\":\"1\",\"//*.jishi.rantu.com\":\"1\",\"//*.cdn.rantu.com\":\"1\",\"//*.ishuqi.com\":\"1\",\"//*.jishi.aligames.com\":\"1\",\"//*.aligames.com\":\"1\",\"//*.mp.dfkhgj.com\":\"1\",\"//*.mp.iuynfg.com\":\"1\",\"//*.mp.edcdfg.com\":\"1\",\"//*.mp.asczwa.com\":\"1\",\"//*.duanqu.com\":\"1\",\"//*.y.xevddy.com\":\"1\",\"//*.l.xevddy.com\":\"1\",\"//*.portalpro.hemaos.com\":\"1\",\"//*.liangxinyao.com\":\"1\",\"//*.taopiaopiao.com\":\"1\",\"//*.fliggy.com\":\"1\",\"//*.m.edcdfg.com\":\"1\",\"//*.feizhu.com\":\"1\",\"//*.youku.com\":\"1\",\"//*.mybank.cn\":\"1\",\"//*.alios.cn\":\"1\",\"//*.alihealth.cn\":\"1\",\"//*.xixi.fullspeed.cn\":\"1\",\"//*.image.9game.cn\":\"1\",\"//*.damai.cn\":\"1\",\"//*.feizhu.cn\":\"1\",\"//*.alpay.net\":\"1\",\"//*.cnzz.net\":\"1\",\"//*.fliggy.net\":\"1\",\"//*.feizhu.net\":\"1\",\"//*.tmall.net\":\"1\",\"//*.tdd.la\":\"1\",\"//*.tdd.la\":\"1\",\"//*.alipay.hk\":\"1\",\"//*.fliggy.hk\":\"1\",\"//*.ynuf.aliapp.org\":\"1\",\"//*.doctoryou.ai\":\"1\",\"//*.ele.me\":\"1\",\"//*.alipay.net\":\"1\",\"//*.wegame-web-daily.uc.test\":\"1\",\"//*.m.10010.com/queen/alitrip/alipay.html\":\"1\",\"//*.5317wan.com\":\"2\",\"//*.guahao.com\":\"2\",\"//*.wap.wandafilm.com\":\"2\",\"//*.wrating.com\":\"2\",\"//*.alipayobjects.com\":\"2\",\"//*.jmt.wxcsgd.com\":\"2\",\"//*.mpay.cx580.com\":\"2\",\"//*.mt.locojoy.com\":\"2\",\"//*.cpa1.locojoy.com\":\"2\",\"//*.miiee.com\":\"2\",\"//*.imaijia.com\":\"2\",\"//*.h5.edaijia.cn\":\"2\",\"//*.beta.library.sh.cn\":\"2\",\"//*.web.chelaile.net.cn\":\"2\",\"//*.app3.shmzj.gov.cn\":\"2\",\"//*.bsfw.qingdao.gov.cn\":\"2\",\"//*.www.hzpolice.gov.cn\":\"2\",\"//*.www.sxgajj.gov.cn\":\"2\",\"//*.service.zjzwfw.gov.cn\":\"2\",\"//*.people.com.cn\":\"2\",\"//*.hbjg.premier-tech.cn\":\"2\",\"//*.aliplay.net\":\"2\",\"//*.ali.hk515.net\":\"2\",\"//*.tmall.pp.cc\":\"2\"}"

    const-string/jumbo v2, "{\"1\":{\"open\":\"allow\",\"api\":\"Group_All\",\"allowaccess\":\"false\"},\n\"2\":{\"open\":\"allow\",\"api\":\"Group_None\",\"allowaccess\":\"true\"},\n\"6\":{\"open\":\"forbidden\",\"api\":\"Group_None\",\"allowaccess\":\"false\"}\n}"

    const-string/jumbo v3, "{\n\"Group_All\":[\"*\"],\n\"Group_None\":[]\n}"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public searchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "URLMATCHER"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "searchUrl: \u8f93\u5165\u7684URL\u4e0d\u5e94\u4e3a\u7a7a\uff01"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->parseUrl(Ljava/lang/String;)Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v4, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v5, v4

    const-string v6, "+"

    const-string v7, "*"

    if-ge v3, v5, :cond_4

    .line 7
    iget-object v5, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    aget-object v4, v4, v3

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 10
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v4, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 13
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_0

    .line 14
    :cond_4
    iget-object v4, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    return-object v2

    .line 15
    :cond_5
    iget-object v3, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    const-string v4, "/"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    :cond_6
    const/4 v3, 0x0

    .line 17
    :goto_1
    iget-object v5, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v8, v5

    if-ge v3, v8, :cond_a

    .line 18
    iget-object v8, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    aget-object v5, v5, v3

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    move-object v0, v5

    goto :goto_1

    .line 19
    :cond_7
    iget-object v5, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 20
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 21
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_1

    .line 22
    :cond_8
    iget-object v5, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 23
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 24
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_1

    .line 25
    :cond_9
    invoke-static {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$000(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 26
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_1

    .line 27
    :cond_a
    iget-object v4, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    return-object v2

    .line 28
    :cond_b
    invoke-static {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 29
    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 30
    :cond_c
    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_SCHEME:[Ljava/lang/String;

    aget-object v5, v4, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    .line 31
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    return-object v2

    .line 32
    :cond_d
    iget-object v3, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    return-object v2

    .line 33
    :cond_e
    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getPort()I

    move-result v3

    sget-object v4, Landroid/taobao/windvane/config/WVUrlMatchUtils;->DEFAULT_PORT:[I

    aget v6, v4, v1

    if-ne v3, v6, :cond_10

    .line 34
    iget p1, p1, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    aget v1, v4, v1

    if-eq p1, v1, :cond_f

    aget v1, v4, v5

    if-eq p1, v1, :cond_f

    return-object v2

    .line 35
    :cond_f
    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->getPort()I

    move-result v1

    if-eq p1, v1, :cond_10

    return-object v2

    .line 36
    :cond_10
    invoke-static {v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_2
    const-string/jumbo p1, "searchUrl: URL\u914d\u7f6e\u4e0d\u5e94\u4e3a\u7a7a\uff01"

    .line 37
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public searchUrlForGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "URLMATCHER"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "searchUrlForGroup: \u8f93\u5165\u7684URL\u4e0d\u5e94\u4e3a\u7a7a\uff01"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->parseUrl(Ljava/lang/String;)Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo p1, "searchUrlForGroup: URL\u89e3\u6790\u5931\u8d25\uff0cURL\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u8f93\u5165\u4e3ajs\uff01"

    .line 5
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 6
    :cond_2
    iget-object v6, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, p1

    .line 9
    invoke-direct/range {v3 .. v9}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->travelTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;ZLandroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Ljava/util/ArrayList;ILjava/util/Map;)V

    const/4 v0, -0x1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->computeGravitySum(Ljava/util/ArrayList;)I

    move-result v3

    if-le v3, v0, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move v0, v3

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    const-string/jumbo p1, "searchUrlForGroup: URL\u914d\u7f6e\u4e0d\u5e94\u4e3a\u7a7a\uff01"

    .line 13
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setApiGroup(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "URLMATCHER"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setApiGroup: \u8f93\u5165\u53c2\u6570\u4e3a\u7a7a"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->apiGroupMap:Ljava/util/Map;

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->apiGroupMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApiGroup: \u672a\u80fd\u6b63\u786e\u83b7\u53d6api\u7ec4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\u8bf7\u68c0\u67e5\u914d\u7f6e"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApiGroupMap: \u53d1\u751f\u5f02\u5e38! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    iget-boolean p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "WindVane"

    const-string/jumbo v1, "urlMatchFailed"

    const-string v2, "3"

    const-string/jumbo v3, "\u914d\u7f6e\u9519\u8bef"

    .line 15
    invoke-static {v0, v1, p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setJsApiPermissionCheck(Landroid/taobao/windvane/config/IJsApiPermissionCheck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIJsApiPermissionCheck:Landroid/taobao/windvane/config/IJsApiPermissionCheck;

    return-void
.end method

.method public setUrlPatterns(Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "URLMATCHER"

    if-eqz v1, :cond_0

    const-string/jumbo p1, "setUrlPatterns: \u8f93\u5165\u914d\u7f6e\u4e3a\u7a7a"

    .line 2
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, p0, v0, v3}, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;-><init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUrlPatterns: \u672a\u80fd\u6b63\u786e\u83b7\u53d6URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7684\u6743\u9650\u7ec4\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, v3}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->parseUrl(Ljava/lang/String;)Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;

    move-result-object v5

    .line 12
    iget-object v6, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->domainRoot:Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;

    invoke-direct {p0, v6, v5, v4}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->insertToTrieTree(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUrlPatterns: URL insert error! url is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "setUrlPatterns: catch a exception!"

    .line 14
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    iget-boolean p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isLoadAppMonitor:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "WindVane"

    const-string/jumbo v1, "urlMatchFailed"

    const-string v2, "1"

    const-string/jumbo v3, "\u914d\u7f6e\u9519\u8bef"

    .line 17
    invoke-static {v0, v1, p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setUrlPermissionCheck(Landroid/taobao/windvane/config/IUrlPermissionCheck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->mIUrlPermissionCheck:Landroid/taobao/windvane/config/IUrlPermissionCheck;

    return-void
.end method

.method public setUrlRulesMap(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "URLMATCHER"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setUrlRulesMap: \u8f93\u5165\u53c2\u6570\u4e3a\u7a7a!"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlRulesMap:Ljava/util/Map;

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 8
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUrlRulesMap: \u672a\u80fd\u6b63\u786e\u83b7\u53d6\u6743\u9650\u7ec4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7684\u6743\u9650,\u8bf7\u68c0\u67e5\u914d\u7f6e"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 14
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUrlRulesMap: \u672a\u80fd\u6b63\u786e\u83b7\u53d6\u6743\u9650:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u7684\u503c,\u8bf7\u68c0\u67e5\u914d\u7f6e"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_3
    iget-object v4, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlRulesMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "setUrlRulesMap: \u914d\u7f6e\u53d1\u751f\u5f02\u5e38!"

    .line 21
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    const-string v0, "WindVane"

    const-string/jumbo v1, "urlMatchFailed"

    const-string v2, "2"

    const-string/jumbo v3, "\u914d\u7f6e\u9519\u8bef"

    .line 23
    invoke-static {v0, v1, p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->customSetted:Z

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p4, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils;->customSetted:Z

    if-eqz p4, :cond_2

    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->setUrlPatterns(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->setUrlRulesMap(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->setApiGroup(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "URLMATCHER"

    const-string/jumbo p2, "urlMatcherConfig: \u8f93\u5165\u53c2\u6570\u4e3a\u7a7a!"

    .line 7
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
