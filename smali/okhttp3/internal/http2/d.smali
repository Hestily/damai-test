.class public final Lokhttp3/internal/http2/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lokhttp3/Interceptor$Chain;

.field private final b:Lokhttp3/internal/connection/e;

.field private final c:Lokhttp3/internal/http2/Http2Connection;

.field private volatile d:Lokhttp3/internal/http2/e;

.field private final e:Lokhttp3/Protocol;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/a;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/d;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/a;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/d;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/e;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lokhttp3/internal/http2/d;->b:Lokhttp3/internal/connection/e;

    .line 3
    iput-object p3, p0, Lokhttp3/internal/http2/d;->a:Lokhttp3/Interceptor$Chain;

    .line 4
    iput-object p4, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    :goto_0
    iput-object p2, p0, Lokhttp3/internal/http2/d;->e:Lokhttp3/Protocol;

    return-void
.end method

.method public static a(Lokhttp3/n;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/n;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/n;->d()Lokhttp3/k;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/k;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v4

    invoke-static {v4}, Ltb/db4;->c(Lokhttp3/l;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lokhttp3/internal/http2/a;

    sget-object v4, Lokhttp3/internal/http2/a;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/l;->C()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0}, Lokhttp3/k;->h()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Lokhttp3/k;->e(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 10
    sget-object v4, Lokhttp3/internal/http2/d;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "te"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p0}, Lokhttp3/k;->i(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trailers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    :cond_1
    new-instance v4, Lokhttp3/internal/http2/a;

    invoke-virtual {v0, p0}, Lokhttp3/k;->i(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static b(Lokhttp3/k;Lokhttp3/Protocol;)Lokhttp3/p$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0}, Lokhttp3/k$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokhttp3/k;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Lokhttp3/k;->e(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lokhttp3/k;->i(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http/e;->a(Ljava/lang/String;)Lokhttp3/internal/http/e;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_0
    sget-object v6, Lokhttp3/internal/http2/d;->h:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    sget-object v6, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {v6, v0, v4, v5}, Ltb/ba2;->b(Lokhttp3/k$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 9
    new-instance p0, Lokhttp3/p$a;

    invoke-direct {p0}, Lokhttp3/p$a;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lokhttp3/p$a;->o(Lokhttp3/Protocol;)Lokhttp3/p$a;

    move-result-object p0

    iget p1, v2, Lokhttp3/internal/http/e;->b:I

    .line 11
    invoke-virtual {p0, p1}, Lokhttp3/p$a;->g(I)Lokhttp3/p$a;

    move-result-object p0

    iget-object p1, v2, Lokhttp3/internal/http/e;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lokhttp3/p$a;->l(Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/p$a;->j(Lokhttp3/k;)Lokhttp3/p$a;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokhttp3/internal/http2/d;->f:Z

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/e;->f(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public connection()Lokhttp3/internal/connection/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->b:Lokhttp3/internal/connection/e;

    return-object v0
.end method

.method public createRequestBody(Lokhttp3/n;J)Lokio/Sink;
    .locals 0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e;->h()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->h()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBodySource(Lokhttp3/p;)Lokio/Source;
    .locals 0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e;->i()Lokio/Source;

    move-result-object p1

    return-object p1
.end method

.method public readResponseHeaders(Z)Lokhttp3/p$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->p()Lokhttp3/k;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/d;->e:Lokhttp3/Protocol;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Lokhttp3/k;Lokhttp3/Protocol;)Lokhttp3/p$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {p1, v0}, Ltb/ba2;->d(Lokhttp3/p$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public reportedContentLength(Lokhttp3/p;)J
    .locals 2

    .line 1
    invoke-static {p1}, Ltb/w42;->b(Lokhttp3/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public trailers()Lokhttp3/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->q()Lokhttp3/k;

    move-result-object v0

    return-object v0
.end method

.method public writeRequestHeaders(Lokhttp3/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lokhttp3/internal/http2/d;->a(Lokhttp3/n;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/http2/Http2Connection;->t(Ljava/util/List;Z)Lokhttp3/internal/http2/e;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    .line 5
    iget-boolean p1, p0, Lokhttp3/internal/http2/d;->f:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e;->l()Lokio/o;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/d;->a:Lokhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    .line 7
    iget-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e;->s()Lokio/o;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/d;->a:Lokhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/http2/d;->d:Lokhttp3/internal/http2/e;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/e;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
