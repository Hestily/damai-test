.class public Landroid/taobao/windvane/log/LogData;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/log/LogData$Builder;
    }
.end annotation


# instance fields
.field errorCode:Ljava/lang/String;

.field errorMsg:Ljava/lang/String;

.field event:Ljava/lang/String;

.field ext:Ljava/lang/StringBuilder;

.field level:I

.field module:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field timestamp:J

.field uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/taobao/windvane/log/LogData$Builder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->event:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->uid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->pid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Landroid/taobao/windvane/log/LogData;->timestamp:J

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorCode:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorMsg:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->module:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->module:Ljava/lang/String;

    .line 10
    iget v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->level:I

    iput v0, p0, Landroid/taobao/windvane/log/LogData;->level:I

    .line 11
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->event:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->event:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->uid:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->uid:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->pid:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->pid:Ljava/lang/String;

    .line 14
    iget-wide v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->timestamp:J

    iput-wide v0, p0, Landroid/taobao/windvane/log/LogData;->timestamp:J

    .line 15
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorCode:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Landroid/taobao/windvane/log/LogData$Builder;->errorMsg:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorMsg:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/taobao/windvane/log/LogData;->ext:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/windvane/log/LogData$Builder;Landroid/taobao/windvane/log/LogData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/log/LogData;-><init>(Landroid/taobao/windvane/log/LogData$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/log/LogData;->addObjToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static addObjToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "\""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getLevelString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "ERROR"

    return-object p1

    :cond_1
    const-string p1, "WARN"

    return-object p1

    :cond_2
    const-string p1, "INFO"

    return-object p1

    :cond_3
    const-string p1, "DEBUG"

    return-object p1

    :cond_4
    const-string p1, "VERBOSE"

    return-object p1
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->ext:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/log/LogData;->level:I

    return v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/log/LogData;->timestamp:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Landroid/taobao/windvane/log/LogData;->level:I

    invoke-direct {p0, v1}, Landroid/taobao/windvane/log/LogData;->getLevelString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->module:Ljava/lang/String;

    const-string v2, "module"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->event:Ljava/lang/String;

    const-string v2, "event"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->uid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->uid:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->pid:Ljava/lang/String;

    const-string/jumbo v2, "parentId"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/log/LogData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->errorCode:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->errorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->errorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addKVToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/log/LogData;->ext:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext"

    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->addObjToString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/log/WMLogGlobal;->getInstance()Landroid/taobao/windvane/log/WMLogGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/log/WMLogGlobal;->writeLog(Landroid/taobao/windvane/log/LogData;)V

    return-void
.end method
