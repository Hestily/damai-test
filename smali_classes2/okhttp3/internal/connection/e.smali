.class public final Lokhttp3/internal/connection/e;
.super Lokhttp3/internal/http2/Http2Connection$b;
.source "Taobao"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public final a:Lokhttp3/internal/connection/f;

.field private final b:Lokhttp3/r;

.field private c:Ljava/net/Socket;

.field private d:Ljava/net/Socket;

.field private e:Lokhttp3/j;

.field private f:Lokhttp3/Protocol;

.field private g:Lokhttp3/internal/http2/Http2Connection;

.field private h:Lokio/BufferedSource;

.field private i:Lokio/BufferedSink;

.field j:Z

.field k:I

.field l:I

.field private m:I

.field private n:I

.field final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/i;",
            ">;>;"
        }
    .end annotation
.end field

.field p:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/f;Lokhttp3/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokhttp3/internal/connection/e;->n:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lokhttp3/internal/connection/e;->p:J

    .line 5
    iput-object p1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    return-void
.end method

.method private e(IILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 6
    :goto_1
    iput-object v1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    .line 7
    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lokhttp3/EventListener;->g(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 8
    iget-object p3, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    :try_start_0
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object p2

    iget-object p3, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    iget-object p4, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {p4}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Ltb/hv3;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object p1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-static {p1}, Lokio/h;->l(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/h;->c(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-static {p1}, Lokio/h;->h(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 13
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {p4}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2
.end method

.method private f(Lokhttp3/internal/connection/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    .line 4
    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/l;->x()I

    move-result v5

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p1, v1}, Lokhttp3/internal/connection/b;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/f;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/f;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v1, v4, v5}, Ltb/hv3;->g(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 12
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lokhttp3/j;->b(Ljavax/net/ssl/SSLSession;)Lokhttp3/j;

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-virtual {v4}, Lokhttp3/j;->d()Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Hostname "

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 17
    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 18
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Lokhttp3/c;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Ltb/w43;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    invoke-virtual {v0}, Lokhttp3/a;->a()Lokhttp3/c;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v4}, Lokhttp3/j;->d()Ljava/util/List;

    move-result-object v5

    .line 27
    invoke-virtual {v3, v0, v5}, Lokhttp3/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    invoke-virtual {p1}, Lokhttp3/f;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltb/hv3;->l(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_3
    iput-object v1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    .line 31
    invoke-static {v1}, Lokio/h;->l(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/h;->c(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    .line 32
    iget-object p1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/h;->h(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    .line 33
    iput-object v4, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    if-eqz v2, :cond_4

    .line 34
    invoke-static {v2}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_4
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltb/hv3;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 37
    :goto_1
    :try_start_3
    invoke-static {p1}, Lokhttp3/internal/a;->A(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 38
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_6

    .line 39
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltb/hv3;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 40
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    throw p1
.end method

.method private g(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->i()Lokhttp3/n;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/e;->e(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 4
    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp3/internal/connection/e;->h(IILokhttp3/n;Lokhttp3/l;)Lokhttp3/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    .line 7
    iput-object v3, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    .line 8
    iput-object v3, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    .line 9
    iget-object v4, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v4}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v5}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lokhttp3/EventListener;->e(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private h(IILokhttp3/n;Lokhttp3/l;)Lokhttp3/n;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/a;->s(Lokhttp3/l;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :goto_0
    new-instance v0, Ltb/r42;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ltb/r42;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/e;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/o;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/o;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    .line 5
    invoke-virtual {p3}, Lokhttp3/n;->d()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ltb/r42;->t(Lokhttp3/k;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ltb/r42;->finishRequest()V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ltb/r42;->readResponseHeaders(Z)Lokhttp3/p$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p3}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p3

    .line 10
    invoke-virtual {v0, p3}, Ltb/r42;->s(Lokhttp3/p;)V

    .line 11
    invoke-virtual {p3}, Lokhttp3/p;->e()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x197

    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->h()Lokhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-interface {v0, v1, p3}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/r;Lokhttp3/p;)Lokhttp3/n;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Connection"

    .line 13
    invoke-virtual {p3, v1}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    move-object p3, v0

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p3}, Lokhttp3/p;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v3

    .line 18
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()Lokhttp3/n;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/n$a;

    invoke-direct {v0}, Lokhttp3/n$a;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 2
    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/n$a;->i(Lokhttp3/l;)Lokhttp3/n$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/n$a;->e(Ljava/lang/String;Lokhttp3/o;)Lokhttp3/n$a;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 4
    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/a;->s(Lokhttp3/l;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v2}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    .line 6
    invoke-static {}, Ltb/tz5;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/n$a;->a()Lokhttp3/n;

    move-result-object v0

    .line 8
    new-instance v1, Lokhttp3/p$a;

    invoke-direct {v1}, Lokhttp3/p$a;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 10
    invoke-virtual {v1, v2}, Lokhttp3/p$a;->o(Lokhttp3/Protocol;)Lokhttp3/p$a;

    move-result-object v1

    const/16 v2, 0x197

    .line 11
    invoke-virtual {v1, v2}, Lokhttp3/p$a;->g(I)Lokhttp3/p$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    .line 12
    invoke-virtual {v1, v2}, Lokhttp3/p$a;->l(Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object v1

    sget-object v2, Lokhttp3/internal/a;->EMPTY_RESPONSE:Lokhttp3/q;

    .line 13
    invoke-virtual {v1, v2}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lokhttp3/p$a;->r(J)Lokhttp3/p$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2, v3}, Lokhttp3/p$a;->p(J)Lokhttp3/p$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    .line 16
    invoke-virtual {v1, v2, v3}, Lokhttp3/p$a;->i(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v2}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->h()Lokhttp3/Authenticator;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 19
    invoke-interface {v2, v3, v1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/r;Lokhttp3/p;)Lokhttp3/n;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private j(Lokhttp3/internal/connection/b;ILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {p1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    .line 5
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/e;->r(I)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    .line 7
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object p1, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p4, p3}, Lokhttp3/EventListener;->y(Lokhttp3/Call;)V

    .line 9
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->f(Lokhttp3/internal/connection/b;)V

    .line 10
    iget-object p1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    invoke-virtual {p4, p3, p1}, Lokhttp3/EventListener;->x(Lokhttp3/Call;Lokhttp3/j;)V

    .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    sget-object p3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p3, :cond_2

    .line 12
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/e;->r(I)V

    :cond_2
    return-void
.end method

.method private q(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/r;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/r;

    .line 3
    invoke-virtual {v3}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 4
    invoke-virtual {v4}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 5
    invoke-virtual {v4}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private r(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Connection$a;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 3
    invoke-virtual {v2}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection$a;->d(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$a;->b(Lokhttp3/internal/http2/Http2Connection$b;)Lokhttp3/internal/http2/Http2Connection$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection$a;->c(I)Lokhttp3/internal/http2/Http2Connection$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$a;->a()Lokhttp3/internal/http2/Http2Connection;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->D()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->r()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/connection/e;->n:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lokhttp3/internal/http2/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/e;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    return-void
.end method

.method public d(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    if-nez v0, :cond_b

    .line 2
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v10, Lokhttp3/internal/connection/b;

    invoke-direct {v10, v0}, Lokhttp3/internal/connection/b;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lokhttp3/f;->CLEARTEXT:Lokhttp3/f;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltb/hv3;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 9
    :cond_1
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 10
    :cond_2
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 11
    :goto_1
    :try_start_0
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 12
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/e;->g(IIILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 13
    iget-object v0, v7, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 14
    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lokhttp3/internal/connection/e;->e(IILokhttp3/Call;Lokhttp3/EventListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v15, p4

    .line 15
    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Lokhttp3/internal/connection/e;->j(Lokhttp3/internal/connection/b;ILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 16
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Lokhttp3/EventListener;->e(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    :goto_3
    iget-object v0, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 18
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_6
    :goto_4
    iget-object v0, v7, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_7

    .line 21
    iget-object v1, v7, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    monitor-enter v1

    .line 22
    :try_start_3
    iget-object v0, v7, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->r()I

    move-result v0

    iput v0, v7, Lokhttp3/internal/connection/e;->n:I

    .line 23
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    .line 24
    :goto_7
    iget-object v1, v7, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    .line 25
    iget-object v1, v7, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    .line 26
    iput-object v11, v7, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    .line 27
    iput-object v11, v7, Lokhttp3/internal/connection/e;->c:Ljava/net/Socket;

    .line 28
    iput-object v11, v7, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    .line 29
    iput-object v11, v7, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    .line 30
    iput-object v11, v7, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    .line 31
    iput-object v11, v7, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    .line 32
    iput-object v11, v7, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 33
    iget-object v1, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/EventListener;->f(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    .line 34
    new-instance v12, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 35
    :cond_8
    invoke-virtual {v12, v0}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    .line 36
    invoke-virtual {v10, v0}, Lokhttp3/internal/connection/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 37
    :cond_9
    throw v12

    .line 38
    :cond_a
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 39
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handshake()Lokhttp3/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    return-object v0
.end method

.method k(Lokhttp3/a;Ljava/util/List;)Z
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/a;",
            "Ljava/util/List<",
            "Lokhttp3/r;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/e;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ltb/ba2;->a:Ltb/ba2;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltb/ba2;->e(Lokhttp3/a;Lokhttp3/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->route()Lokhttp3/r;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_7

    .line 5
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/e;->q(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p1}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Ltb/w43;->INSTANCE:Ltb/w43;

    if-eq p2, v0, :cond_5

    return v2

    .line 7
    :cond_5
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/e;->s(Lokhttp3/l;)Z

    move-result p2

    if-nez p2, :cond_6

    return v2

    .line 8
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/c;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->handshake()Lokhttp3/j;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lokhttp3/c;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_7
    :goto_0
    return v2
.end method

.method public l(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->q(J)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 4
    :try_start_0
    iget-object p1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v2, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method n(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/internal/http2/d;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p0, p2, v1}, Lokhttp3/internal/http2/d;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/e;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/http2/Http2Connection;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/o;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    .line 5
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/o;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    .line 6
    new-instance p2, Ltb/r42;

    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    invoke-direct {p2, p1, p0, v0, v1}, Ltb/r42;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/e;Lokio/BufferedSource;Lokio/BufferedSink;)V

    return-object p2
.end method

.method o(Lokhttp3/internal/connection/c;)Lokhttp3/internal/ws/RealWebSocket$d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->p()V

    .line 3
    new-instance v0, Lokhttp3/internal/connection/e$a;

    iget-object v5, p0, Lokhttp3/internal/connection/e;->h:Lokio/BufferedSource;

    iget-object v6, p0, Lokhttp3/internal/connection/e;->i:Lokio/BufferedSink;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/e$a;-><init>(Lokhttp3/internal/connection/e;ZLokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/c;)V

    return-object v0
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->j:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    return-object v0
.end method

.method public route()Lokhttp3/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    return-object v0
.end method

.method public s(Lokhttp3/l;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokhttp3/l;->x()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->x()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    if-eqz v0, :cond_1

    sget-object v0, Ltb/w43;->INSTANCE:Ltb/w43;

    .line 4
    invoke-virtual {p1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    invoke-virtual {v3}, Lokhttp3/j;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {v0, p1, v3}, Ltb/w43;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/Socket;

    return-object v0
.end method

.method t(Ljava/io/IOException;)V
    .locals 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 4
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_0

    .line 5
    iget p1, p0, Lokhttp3/internal/connection/e;->m:I

    add-int/2addr p1, v2

    iput p1, p0, Lokhttp3/internal/connection/e;->m:I

    if-le p1, v2, :cond_4

    .line 6
    iput-boolean v2, p0, Lokhttp3/internal/connection/e;->j:Z

    .line 7
    iget p1, p0, Lokhttp3/internal/connection/e;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lokhttp3/internal/connection/e;->k:I

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-eq p1, v1, :cond_4

    .line 9
    iput-boolean v2, p0, Lokhttp3/internal/connection/e;->j:Z

    .line 10
    iget p1, p0, Lokhttp3/internal/connection/e;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lokhttp3/internal/connection/e;->k:I

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_4

    .line 12
    :cond_2
    iput-boolean v2, p0, Lokhttp3/internal/connection/e;->j:Z

    .line 13
    iget v1, p0, Lokhttp3/internal/connection/e;->l:I

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 14
    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/internal/connection/f;

    iget-object v3, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1, v3, p1}, Lokhttp3/internal/connection/f;->c(Lokhttp3/r;Ljava/io/IOException;)V

    .line 15
    :cond_3
    iget p1, p0, Lokhttp3/internal/connection/e;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lokhttp3/internal/connection/e;->k:I

    .line 16
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 2
    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    invoke-virtual {v1}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 3
    invoke-virtual {v1}, Lokhttp3/r;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/r;

    .line 4
    invoke-virtual {v1}, Lokhttp3/r;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/j;->a()Lokhttp3/d;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
