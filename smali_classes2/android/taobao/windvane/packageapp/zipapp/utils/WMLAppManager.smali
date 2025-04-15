.class public Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;->sInstance:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;->sInstance:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;->sInstance:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

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
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;->sInstance:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    return-object v0
.end method


# virtual methods
.method public closeApp(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/zcache/ZCacheManager;->resumeApp(Ljava/lang/String;)V

    return-void
.end method

.method public commitVisit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteApp(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/zcache/ZCacheManager;->removeAZCache(Ljava/lang/String;)V

    return-void
.end method

.method public isApp(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadApp(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    invoke-direct {v0}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_startTime:J

    .line 3
    iput-object p1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->appName:Ljava/lang/String;

    const-string v1, "3"

    .line 4
    iput-object v1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->type:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitTask;->getInstance()Lcom/taobao/zcache/ZCacheInitTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/zcache/ZCacheInitTask;->init()V

    .line 6
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;-><init>(Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/taobao/zcache/ZCacheManager;->getAppPath(Ljava/lang/String;Lcom/taobao/zcachecorewrapper/IZCacheCore$AppInfoCallback;)V

    return-void
.end method

.method public prefetchApps(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDamage(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/zcache/ZCacheManager;->removeAZCache(Ljava/lang/String;)V

    return-void
.end method
