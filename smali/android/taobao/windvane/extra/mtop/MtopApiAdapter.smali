.class public Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/connect/api/IApiAdapter;


# instance fields
.field private request:Landroid/taobao/windvane/connect/api/ApiRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkParams()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ttid"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "111111111111111"

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 4
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 6
    :goto_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v3, "imei"

    invoke-virtual {v1, v3, v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v1, "imsi"

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getDataParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getDataParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    sget-object v0, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/taobao/windvane/extra/WVIAdapter;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 16
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    :cond_5
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_6
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->isSec()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-direct {p0, v1}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->getSecBodyData(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wua"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_7
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSecret"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->getSign()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string/jumbo v3, "sign"

    invoke-virtual {v1, v3, v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v3, "*"

    invoke-virtual {v0, v1, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_8
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->removeParam(Ljava/lang/String;)V

    .line 28
    :cond_9
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ecode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->removeParam(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private getSecBodyData(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/security/SecurityManager;->getInstance()Landroid/taobao/windvane/extra/security/SecurityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/taobao/windvane/extra/security/SecurityManager;->getSecBody(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSign()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/security/SecurityManager;->getInstance()Landroid/taobao/windvane/extra/security/SecurityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v3, "appKey"

    .line 2
    invoke-virtual {v2, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v1, v2}, Landroid/taobao/windvane/extra/security/SecurityManager;->getSign(ILjava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    const-string v2, "MtopApiAdapter"

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appkey: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " params: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "SecurityManager.getSign failed, execute TaoApiSign.getSign"

    .line 6
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/extra/security/TaoApiSign;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private wrapBody()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const-string v4, "&"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 5
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wrapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {p1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->checkParams()V

    .line 3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->wrapBody()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->checkParams()V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getMtopUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;->wrapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
