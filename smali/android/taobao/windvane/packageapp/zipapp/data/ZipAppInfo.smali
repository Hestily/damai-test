.class public Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public errorCode:Ljava/lang/String;

.field public f:J

.field public folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installedSeq:J

.field public installedVersion:Ljava/lang/String;

.field public isDamage:Z

.field public isInUse:Z

.field public isInstantApp:Z

.field public isOptional:Z

.field public isPreViewApp:Z

.field public localFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mappingUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public s:J

.field public status:I

.field public t:J

.field public tempPriority:I

.field private updateInfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

.field private updateType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

.field public v:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    const-string v1, "0.0"

    .line 3
    iput-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const/4 v3, -0x1

    .line 5
    iput v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 9
    iput-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 10
    iput-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isDamage:Z

    .line 11
    iput-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isInstantApp:Z

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->localFolders:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 15
    iput-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 16
    iput-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    const-wide/16 v0, 0x5

    .line 17
    iput-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    return-void
.end method


# virtual methods
.method public equals(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public genMidPath(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    const-string v1, "0.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 10

    .line 1
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0xf0

    and-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 3
    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    .line 4
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isInstantApp:Z

    .line 6
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0
.end method

.method public getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    .locals 10

    .line 1
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0x3000

    and-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 3
    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateInfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_APP_TYPE_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    return-object v0
.end method

.method public getIs2GUpdate()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIs3GUpdate()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNameAndSeq()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameandVersion()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getUpdateType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    .locals 10

    .line 1
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0xf00

    and-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 3
    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_UPDATE_TYPE_PASSIVE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    return-object v0
.end method

.method public getZipUrl()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    const-string/jumbo v1, "wapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getPackageZipPrefixAdapter()Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    iget-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    invoke-interface {v0, v1, v2}, Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;->getPackageZipPrefix(Landroid/taobao/windvane/config/EnvEnum;Z)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zip url by app config: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZipURL"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 9
    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isAppInstalled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isInstantApp:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 12
    :cond_3
    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_8

    .line 13
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v4, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPrefix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 14
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo$1;->$SwitchMap$android$taobao$windvane$config$EnvEnum:[I

    sget-object v4, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const-string v4, "https://ossgw.alicdn.com/awp/h5.m.taobao.com/"

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 15
    iput-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "http://h5.waptest.taobao.com/"

    .line 16
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "http://h5.wapa.taobao.com/"

    .line 17
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_6
    iput-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_7
    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_8
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v4, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPreviewPrefix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 21
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo$1;->$SwitchMap$android$taobao$windvane$config$EnvEnum:[I

    sget-object v4, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const-string v4, "http://wapp.m.taobao.com/"

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 22
    iput-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "http://wapp.waptest.taobao.com/"

    .line 23
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "http://wapp.wapa.taobao.com/"

    .line 24
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_b
    iput-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_c
    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPreviewPrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 27
    :cond_d
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_e

    const-string v1, "/"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "app/"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app-"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-nez v1, :cond_10

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v2, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1

    .line 35
    :cond_f
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-wide v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_10

    const-string v1, "-incr"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_1
    const-string v1, ".zip"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppInstalled()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIP_REMOVED:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
