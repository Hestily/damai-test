.class public Landroid/taobao/windvane/connect/IResponse;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private StatusCode:I

.field private data:[B

.field private desc:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNetstat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    invoke-direct {v0}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->mNetstat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->headersMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->data:[B

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/IResponse;->StatusCode:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->data:[B

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHeadMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Landroid/taobao/windvane/connect/IResponse;->headersMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->headersMap:Ljava/util/Map;

    const-string v0, "content-type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->parseMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/connect/IResponse;->mimeType:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->encoding:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "utf-8"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->encoding:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Landroid/taobao/windvane/connect/IResponse;->encoding:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/connect/IResponse;->StatusCode:I

    return-void
.end method
