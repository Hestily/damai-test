.class public Landroid/taobao/windvane/connect/ApiUrlManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static TAG:Ljava/lang/String; = "core.ApiUrlManager"

.field private static configUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/taobao/windvane/connect/ApiUrlManager;->configUrlMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Landroid/taobao/windvane/connect/ApiUrlManager;->configUrlMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/taobao/windvane/connect/ApiUrlManager;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Landroid/taobao/windvane/connect/ApiUrlManager;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/connect/ApiUrlManager;->configUrlMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v1}, Landroid/taobao/windvane/connect/ApiUrlManager;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 6
    :cond_2
    new-instance v1, Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/api/ApiRequest;-><init>()V

    const-string v2, "biztype"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "api"

    .line 8
    invoke-virtual {v1, p1, p0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p1, Landroid/taobao/windvane/connect/CdnApiAdapter;

    invoke-static {v1, p1}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v1, Landroid/taobao/windvane/connect/ApiUrlManager;->configUrlMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Landroid/taobao/windvane/connect/ApiUrlManager;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static logUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/connect/ApiUrlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
