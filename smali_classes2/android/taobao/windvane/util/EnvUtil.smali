.class public Landroid/taobao/windvane/util/EnvUtil;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static DEBUG:Z

.field private static inited:Z

.field private static openSpdyforDebug:Z


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

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Landroid/taobao/windvane/util/EnvUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Landroid/taobao/windvane/util/EnvUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2
    :try_start_1
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/taobao/windvane/util/EnvUtil;->DEBUG:Z

    .line 5
    sput-boolean v2, Landroid/taobao/windvane/util/EnvUtil;->inited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAppDebug()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/util/EnvUtil;->inited:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->init()V

    .line 3
    :cond_0
    sget-boolean v0, Landroid/taobao/windvane/util/EnvUtil;->DEBUG:Z

    return v0
.end method

.method public static isCN()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOpenSpdyforDebug()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/util/EnvUtil;->openSpdyforDebug:Z

    return v0
.end method

.method public static isTaobao()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setOpenSpdyforDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/util/EnvUtil;->openSpdyforDebug:Z

    return-void
.end method
