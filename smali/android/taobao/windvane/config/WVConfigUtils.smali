.class public Landroid/taobao/windvane/config/WVConfigUtils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SPNAME:Ljava/lang/String; = "WVConfigUtils"

.field protected static final TAG:Ljava/lang/String; = "WVConfigUtils"

.field private static appVersion:Ljava/lang/String;

.field private static isAppKeyAvailable:Z

.field private static isAppKeyChecked:Z


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

.method public static declared-synchronized checkAppKeyAvailable()Z
    .locals 7

    const-class v0, Landroid/taobao/windvane/config/WVConfigUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyChecked:Z

    if-eqz v1, :cond_0

    .line 2
    sget-boolean v1, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyChecked:Z

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    sput-boolean v3, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyAvailable:Z

    .line 6
    sput-boolean v3, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return v3

    .line 8
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 10
    aget-char v5, v2, v4

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    aget-char v5, v2, v4

    const/16 v6, 0x39

    if-le v5, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    sput-boolean v3, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyAvailable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit v0

    return v3

    .line 13
    :cond_4
    :try_start_3
    sput-boolean v1, Landroid/taobao/windvane/config/WVConfigUtils;->isAppKeyAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dealAppVersion()Ljava/lang/String;
    .locals 4

    const-class v0, Landroid/taobao/windvane/config/WVConfigUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVConfigUtils;->appVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVConfigUtils;->appVersion:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, "%2D"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Landroid/taobao/windvane/config/WVConfigUtils;->appVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTargetValue()Ljava/lang/String;
    .locals 6

    const-string v0, "abt"

    const-string/jumbo v1, "wv_main_config"

    .line 1
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h5."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v4}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".taobao.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "abt="

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x61

    if-ne v3, v4, :cond_0

    const/16 v2, 0x61

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x4

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    if-gt v5, v2, :cond_2

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 6
    invoke-static {v1, v0, v3}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isNeedUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\\."

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    array-length v0, p0

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    aget-object p0, p0, v4

    goto :goto_1

    :cond_1
    :goto_0
    return v3

    .line 8
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 p0, 0x0

    :goto_1
    const-string/jumbo v5, "wv_main_config"

    const-string v6, "0"

    .line 9
    invoke-static {v5, p1, v6}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    .line 13
    array-length v0, p1

    if-le v0, v4, :cond_4

    aget-object v0, p1, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    array-length p0, p1

    if-ge p0, v1, :cond_6

    goto :goto_2

    .line 15
    :cond_5
    array-length p0, p1

    if-le p0, v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return v3
.end method

.method public static isNeedUpdate(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "wv-time"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/ConfigStorage;->getLongVal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    if-eqz p0, :cond_0

    const-wide/32 p0, 0x1b7740

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x1499700

    :goto_0
    cmp-long p2, v0, p0

    if-gtz p2, :cond_2

    const-wide/16 p0, 0x0

    cmp-long p2, v0, p0

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object p1

    iget-boolean p1, p1, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
