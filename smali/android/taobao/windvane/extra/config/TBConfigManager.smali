.class public Landroid/taobao/windvane/extra/config/TBConfigManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ANDROID_WINDVANE_CONFIG:Ljava/lang/String; = "android_windvane_config"

.field public static final WINDVANE_COMMMON_CONFIG:Ljava/lang/String; = "WindVane_common_config"

.field public static final WINDVANE_CONFIG:Ljava/lang/String; = "WindVane"

.field public static final WINDVANE_URL_CONFIG:Ljava/lang/String; = "WindVane_URL_config"

.field private static volatile instance:Landroid/taobao/windvane/extra/config/TBConfigManager;


# instance fields
.field private mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/config/TBConfigManager;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/extra/config/TBConfigManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/config/TBConfigManager;->instance:Landroid/taobao/windvane/extra/config/TBConfigManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/config/TBConfigManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/config/TBConfigManager;->instance:Landroid/taobao/windvane/extra/config/TBConfigManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/extra/config/TBConfigManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/config/TBConfigManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/extra/config/TBConfigManager;->instance:Landroid/taobao/windvane/extra/config/TBConfigManager;

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
    sget-object v0, Landroid/taobao/windvane/extra/config/TBConfigManager;->instance:Landroid/taobao/windvane/extra/config/TBConfigManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/config/TBConfigManager;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "android_windvane_config"

    const-string v0, "WindVane_common_config"

    const-string v1, "WindVane"

    const-string v2, "WindVane_URL_config"

    .line 2
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/taobao/windvane/extra/config/TBConfigListenerV1;

    invoke-direct {v0}, Landroid/taobao/windvane/extra/config/TBConfigListenerV1;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/config/TBConfigManager;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    .line 4
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/config/TBConfigManager;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/taobao/windvane/extra/config/TBConfigManager;->mConfigListenerV1:Lcom/taobao/orange/OrangeConfigListenerV1;

    :cond_0
    :goto_0
    return-void
.end method
