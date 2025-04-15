.class public Landroid/taobao/windvane/grey/GreyPageManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile instance:Landroid/taobao/windvane/grey/GreyPageManager;

.field private static final mGreyPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/grey/GreyPageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/grey/GreyPageManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/grey/GreyPageManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/grey/GreyPageManager;

    invoke-direct {v1}, Landroid/taobao/windvane/grey/GreyPageManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/taobao/windvane/grey/GreyPageInfo;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/grey/GreyPageInfo;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getGreyPageInfo(Ljava/lang/String;)Landroid/taobao/windvane/grey/GreyPageInfo;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/grey/GreyPageInfo;

    return-object p1
.end method

.method public isGreyPage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Landroid/taobao/windvane/grey/GreyPageInfo;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/grey/GreyPageInfo;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
