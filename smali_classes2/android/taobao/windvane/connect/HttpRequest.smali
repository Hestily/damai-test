.class public Landroid/taobao/windvane/connect/HttpRequest;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final DEFAULT_HTTPS_ERROR_EXPIRED:Ljava/lang/String; = "EXPIRED"

.field public static final DEFAULT_HTTPS_ERROR_INVALID:Ljava/lang/String; = "INVALID"

.field public static final DEFAULT_HTTPS_ERROR_NONE:Ljava/lang/String; = "NONE"

.field public static final DEFAULT_MAX_LENGTH:I = 0x500000

.field public static final DEFAULT_MAX_REDIRECT_TIMES:I = 0x5


# instance fields
.field private connectTimeout:I

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

.field private httpsVerifyError:Ljava/lang/String;

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private postData:[B

.field private readTimeout:I

.field private retryTime:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->method:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->headers:Ljava/util/Map;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->isRedirect:Z

    .line 5
    iput v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->retryTime:I

    const/16 v0, 0x1388

    .line 6
    iput v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->connectTimeout:I

    .line 7
    iput v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->readTimeout:I

    const-string v0, "NONE"

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->httpsVerifyError:Ljava/lang/String;

    const-string v0, "HttpRequest init error, url is null."

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->connectTimeout:I

    return v0
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
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpsVerifyError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->httpsVerifyError:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPostData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->postData:[B

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->readTimeout:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->retryTime:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/connect/HttpRequest;->isRedirect:Z

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->connectTimeout:I

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

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method public setHttpsVerifyError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->httpsVerifyError:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setPostData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->postData:[B

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->readTimeout:I

    return-void
.end method

.method public setRedirect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->isRedirect:Z

    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->retryTime:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpRequest;->uri:Landroid/net/Uri;

    :cond_0
    return-void
.end method
