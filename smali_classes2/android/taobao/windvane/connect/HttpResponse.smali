.class public Landroid/taobao/windvane/connect/HttpResponse;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private data:[B

.field private errorMsg:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->httpCode:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->errorMsg:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/connect/HttpResponse;->headers:Ljava/util/Map;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->data:[B

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->data:[B

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->httpCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/HttpResponse;->httpCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpResponse;->data:[B

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpResponse;->headers:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/connect/HttpResponse;->httpCode:I

    return-void
.end method
