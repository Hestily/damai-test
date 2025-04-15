.class public Landroid/taobao/windvane/log/LogData$Builder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/log/LogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->event:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->pid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Landroid/taobao/windvane/log/LogData$Builder;->timestamp:J

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->errorCode:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->errorMsg:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "{"

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2}, Landroid/taobao/windvane/log/LogData;->access$000(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2}, Landroid/taobao/windvane/log/LogData;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/util/Map;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/taobao/windvane/log/LogData$Builder;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {v0, v2, v1}, Landroid/taobao/windvane/log/LogData;->access$000(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo p2, "}"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p2, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/taobao/windvane/log/LogData;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object p0
.end method

.method public append(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2}, Landroid/taobao/windvane/log/LogData;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public build()Landroid/taobao/windvane/log/LogData;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/log/LogData$Builder;->ext:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Landroid/taobao/windvane/log/LogData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/taobao/windvane/log/LogData;-><init>(Landroid/taobao/windvane/log/LogData$Builder;Landroid/taobao/windvane/log/LogData$1;)V

    return-object v0
.end method

.method public errorCode(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public errorMsg(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public event(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->event:Ljava/lang/String;

    return-object p0
.end method

.method public level(I)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->level:I

    return-object p0
.end method

.method public module(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->module:Ljava/lang/String;

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->timestamp:J

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Landroid/taobao/windvane/log/LogData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/log/LogData$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method
