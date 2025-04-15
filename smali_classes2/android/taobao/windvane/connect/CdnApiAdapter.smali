.class public Landroid/taobao/windvane/connect/CdnApiAdapter;
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

.method private wrapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v1, "biztype"

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "windvane"

    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "config"

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h5-apps.json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string/jumbo v3, "wvgroupID"

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string/jumbo v3, "wvgroupVersion"

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "8.5.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v4, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v4}, Landroid/taobao/windvane/connect/api/ApiRequest;->getDataParams()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/taobao/windvane/connect/api/ApiRequest;->getDataParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    const-string v2, "ABT"

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiRequest;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/connect/CdnApiAdapter;->request:Landroid/taobao/windvane/connect/api/ApiRequest;

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getCdnConfigUrlPre()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/taobao/windvane/connect/CdnApiAdapter;->wrapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
