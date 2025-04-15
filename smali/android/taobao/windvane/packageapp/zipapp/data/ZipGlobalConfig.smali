.class public Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private mAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZcacheResConfig:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public online_v:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZipGlobalConfig"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->v:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->online_v:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addZcacheResConfig(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZcacheforDebug \u65b0\u589ezcache name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->isAvailableData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    return-object p1
.end method

.method public getAppsTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getZcacheResConfig()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isAllAppUpdated()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->isAvailableData()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 4
    iget v4, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v5, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIP_REMOVED:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-wide v4, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v6, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    return v0

    :cond_3
    return v1

    :catch_0
    return v0
.end method

.method public isAvailableData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZcacheUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 11
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 12
    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;-><init>()V

    .line 13
    iget-object v3, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;->appName:Ljava/lang/String;

    .line 14
    iget-object v3, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v3, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;->v:Ljava/lang/String;

    .line 15
    invoke-static {}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getInstance()Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;->path:Ljava/lang/String;

    .line 16
    iget-wide v2, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iput-wide v2, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig$CacheFileData;->seq:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZcacheforDebug \u8d44\u6e90url \u89e3\u6790\u5339\u914d\u5f02\u5e38\uff0curl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V
    .locals 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v0, v1, :cond_a

    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 5
    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v0, v1, :cond_3

    .line 6
    iget-boolean v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    goto/16 :goto_2

    .line 8
    :cond_2
    :goto_0
    sget v0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIP_REMOVED:I

    iput v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 9
    iget-wide v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    iput-wide v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    goto/16 :goto_2

    .line 10
    :cond_3
    iget-wide v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    iput-wide v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    .line 11
    iget-wide v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    return-void

    .line 12
    :cond_4
    iput-wide v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 13
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 14
    iget-wide v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    iput-wide v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 15
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    iput-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 16
    iget-boolean v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    iput-boolean v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 17
    iget-boolean v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    iput-boolean v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 18
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 19
    iget-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 20
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Folders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before replace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    iput-object v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " folders to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_6
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    iput-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 25
    :cond_7
    iget-wide v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 26
    iput-wide v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 27
    :cond_8
    iget-object v0, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 28
    iget-object p2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    iput-object p2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_9
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :cond_a
    :goto_2
    return-void
.end method

.method public removeAppInfoFromTable(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeZcacheRes(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZcacheforDebug \u5220\u9664zcache name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, "0"

    .line 1
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->v:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->isAvailableData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    return-void
.end method

.method public setZcacheResConfig(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZcacheforDebug \u8bbe\u7f6eZcache \u7684url map size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
