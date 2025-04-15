.class public Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "http://my.m.taobao.com/deliver/wap_deliver_address_list.htm"

.field private static final CART:Ljava/lang/String; = "http://h5.m.taobao.com/awp/base/cart.htm"

.field private static final DETAIL:Ljava/lang/String; = "http://a.m.taobao.com/i"

.field private static final FAV:Ljava/lang/String; = "http://fav.m.taobao.com/my_collect_list.htm"

.field private static final LOGIN:Ljava/lang/String; = "http://login.m.taobao.com/login.htm"

.field private static final MYTAOBAO:Ljava/lang/String; = "http://my.m.taobao.com/myTaobao.htm"

.field private static final ORDER_LIST:Ljava/lang/String; = "http://trade.taobao.com/trade/itemlist/list_bought_items.htm"

.field private static final SEARCH:Ljava/lang/String; = "http://s.m.taobao.com/search.htm?q="

.field private static final SHOP:Ljava/lang/String; = "http://shop.m.taobao.com/shop/shop_index.htm"

.field private static final TAG:Ljava/lang/String; = "WVUrlResolver"


# instance fields
.field private isUpdating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isUpdating:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isNeedupdateURLRule(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->updateURLRule()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->refreshConfig(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$002(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isUpdating:Z

    return p1
.end method

.method static synthetic access$100(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStorageKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hitURLInterceptRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->parse(Ljava/lang/String;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v2, v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->code:I

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->toUri(Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/WVUrlUtil;->rebuildWVurl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->parseByTag(Ljava/lang/String;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget v1, v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->code:I

    if-lez v1, :cond_2

    const-string p0, "WVUrlResolver"

    const-string/jumbo v1, "parse url success through tag."

    .line 5
    invoke-static {p0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLInterceptRulePats()Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-static {p0, v0, v1}, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->parseByRule(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    move-result-object p0

    return-object p0
.end method

.method private refreshConfig(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->readConfigFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->parseRuleData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->urlRuleStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    sget-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->URL_FILTER:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->resetRulesAndPat()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;

    .line 6
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static toUri(Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->code:I

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->params:Ljava/util/Map;

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://a.m.taobao.com/i"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HY_ITM_ID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".htm"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://s.m.taobao.com/search.htm?q="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HY_S_Q"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x12c

    if-ne v0, v2, :cond_4

    const-string v0, "HY_SHOP_ID"

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "HY_USER_ID"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://shop.m.taobao.com/shop/shop_index.htm?user_id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://shop.m.taobao.com/shop/shop_index.htm?shop_id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, 0x190

    if-ne v0, v1, :cond_5

    const-string p0, "http://h5.m.taobao.com/awp/base/cart.htm"

    return-object p0

    :cond_5
    const/16 v1, 0x258

    if-ne v0, v1, :cond_6

    const-string p0, "http://my.m.taobao.com/myTaobao.htm"

    return-object p0

    :cond_6
    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_7

    const-string p0, "http://fav.m.taobao.com/my_collect_list.htm"

    return-object p0

    :cond_7
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_8

    const-string p0, "http://trade.taobao.com/trade/itemlist/list_bought_items.htm"

    return-object p0

    :cond_8
    const/16 v1, 0x320

    if-ne v0, v1, :cond_9

    const-string p0, "http://my.m.taobao.com/deliver/wap_deliver_address_list.htm"

    return-object p0

    :cond_9
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const-string p0, "http://login.m.taobao.com/login.htm"

    return-object p0

    .line 11
    :cond_a
    iget-object p0, p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getConfigUrl()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "urlRule.json"

    const-string v1, "2"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/connect/ApiUrlManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedupdateURLRule(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isOpenURLIntercept()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUtils;->SPNAME:Ljava/lang/String;

    invoke-direct {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/taobao/windvane/config/WVConfigUtils;->isNeedUpdate(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isOpenURLIntercept()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/ModuleConfig;->getInstance()Landroid/taobao/windvane/config/ModuleConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/config/ModuleConfig;->url_updateConfig:Z

    return v0
.end method

.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    new-instance v2, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v2}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 3
    invoke-virtual {v2, p1}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object p1

    iget-boolean p1, p1, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, v2, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->parseRuleData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-direct {p0, p1}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->refreshConfig(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected readConfigFile()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUtils;->SPNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wv-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveConfigFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUtils;->SPNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wv-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->parse(Ljava/lang/String;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLInterceptHandler()Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLInterceptHandler()Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;->doURLIntercept(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateURLRule()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isUpdating:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUpdateConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUrlResolver"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->isUpdating:Z

    .line 5
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;-><init>(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;)V

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/ConnectManager;->connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    :cond_1
    return-void
.end method
