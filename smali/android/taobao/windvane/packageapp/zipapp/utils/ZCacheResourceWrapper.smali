.class public Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    return-void
.end method


# virtual methods
.method public wrapZCacheResourceResponse(Lcom/taobao/zcache/ResourceResponse;)Lcom/taobao/zcache/model/ZCacheResourceResponse;
    .locals 4

    .line 1
    new-instance v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;

    invoke-direct {v0}, Lcom/taobao/zcache/model/ZCacheResourceResponse;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    iput-boolean v1, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    .line 3
    iput v1, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    const-string p1, "NO_RESPONSE"

    .line 4
    iput-object p1, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getHeader()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iget-object v0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v2, "X-ZCache-Info"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iget-object v3, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    const-string v2, "NO_HEADER"

    iput-object v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getError()Lcom/taobao/zcache/Error;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getData()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iput-boolean v2, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    const/4 v0, 0x2

    .line 12
    iput v0, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iput-boolean v1, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    .line 14
    iput v2, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    .line 15
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    return-object p1
.end method
