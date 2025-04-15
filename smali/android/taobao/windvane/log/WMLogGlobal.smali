.class public Landroid/taobao/windvane/log/WMLogGlobal;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static global:Landroid/taobao/windvane/log/WMLogGlobal;


# instance fields
.field private context:Landroid/content/Context;

.field private externalLogHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/log/IWMLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/log/WMLogGlobal;->externalLogHandlers:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/log/WMLogGlobal;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/log/WMLogGlobal;->global:Landroid/taobao/windvane/log/WMLogGlobal;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/log/WMLogGlobal;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/log/WMLogGlobal;->global:Landroid/taobao/windvane/log/WMLogGlobal;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/log/WMLogGlobal;

    invoke-direct {v1}, Landroid/taobao/windvane/log/WMLogGlobal;-><init>()V

    sput-object v1, Landroid/taobao/windvane/log/WMLogGlobal;->global:Landroid/taobao/windvane/log/WMLogGlobal;

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
    sget-object v0, Landroid/taobao/windvane/log/WMLogGlobal;->global:Landroid/taobao/windvane/log/WMLogGlobal;

    return-object v0
.end method

.method private isDebugEnvironment()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/WMLogGlobal;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public addExternalLogHandler(Landroid/taobao/windvane/log/IWMLog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/WMLogGlobal;->externalLogHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/WMLogGlobal;->context:Landroid/content/Context;

    return-void
.end method

.method public writeLog(Landroid/taobao/windvane/log/LogData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->toLogString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Landroid/taobao/windvane/log/LogData;->module:Ljava/lang/String;

    .line 3
    iget v2, p1, Landroid/taobao/windvane/log/LogData;->level:I

    .line 4
    iget-object v3, p0, Landroid/taobao/windvane/log/WMLogGlobal;->externalLogHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Landroid/taobao/windvane/log/WMLogGlobal;->isDebugEnvironment()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/log/WMLogGlobal;->externalLogHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/log/IWMLog;

    .line 12
    invoke-interface {v1, p1}, Landroid/taobao/windvane/log/IWMLog;->writeLog(Landroid/taobao/windvane/log/LogData;)V

    goto :goto_1

    :cond_7
    return-void
.end method
