.class public Landroid/taobao/windvane/prefetch/WVPrefetchHandler;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/weaver/prefetch/PrefetchHandler;


# static fields
.field private static GET_DATA:Ljava/lang/String; = "Prefetch.getData"

.field private static REQUEST_DATA:Ljava/lang/String; = "Prefetch.requestData"

.field private static TEST_KEY:Ljava/lang/String; = "test"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "isSupport"

    .line 2
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "apiName"

    .line 5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v2, Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;

    invoke-direct {v2}, Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;-><init>()V

    .line 7
    sget-object v3, Landroid/taobao/windvane/prefetch/WVPrefetchHandler;->GET_DATA:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/taobao/windvane/prefetch/WVPrefetchHandler;->REQUEST_DATA:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v1, :cond_3

    .line 9
    :cond_1
    sget-object p1, Landroid/taobao/windvane/prefetch/WVPrefetchHandler;->TEST_KEY:Ljava/lang/String;

    iput-object p1, v2, Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;->externalKey:Ljava/lang/String;

    const-string p1, "externalKey"

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;->externalKey:Ljava/lang/String;

    .line 12
    :cond_2
    sget-object p1, Lcom/taobao/weaver/prefetch/PrefetchType;->SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    iput-object p1, v2, Lcom/taobao/weaver/prefetch/WMLPrefetchDecision;->status:Lcom/taobao/weaver/prefetch/PrefetchType;

    :cond_3
    return-object v2
.end method

.method public prefetchData(Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weaver/prefetch/PrefetchDataCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weaver/prefetch/PrefetchDataCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "isLocal"

    .line 2
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "client"

    const-string v0, "TBClient"

    .line 5
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "apiName"

    const-string v0, "Prefetch"

    .line 6
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "type"

    const-string v0, "Local"

    .line 7
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;

    invoke-direct {p2}, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;-><init>()V

    .line 9
    iput-object p1, p2, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->data:Ljava/util/Map;

    const/16 p1, 0xa

    .line 10
    iput p1, p2, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->usageLimit:I

    const/16 p1, 0x1f4

    .line 11
    iput p1, p2, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->maxAge:I

    .line 12
    invoke-interface {p3, p2}, Lcom/taobao/weaver/prefetch/PrefetchDataCallback;->onComplete(Lcom/taobao/weaver/prefetch/PrefetchDataResponse;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object p2

    new-instance v0, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;

    invoke-direct {v0, p0, p3}, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;-><init>(Landroid/taobao/windvane/prefetch/WVPrefetchHandler;Lcom/taobao/weaver/prefetch/PrefetchDataCallback;)V

    invoke-virtual {p2, p1, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
