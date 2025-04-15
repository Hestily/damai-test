.class public final Lokhttp3/internal/connection/i;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/i$b;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/OkHttpClient;

.field private final b:Lokhttp3/internal/connection/f;

.field private final c:Lokhttp3/Call;

.field private final d:Lokhttp3/EventListener;

.field private final e:Lokio/AsyncTimeout;

.field private f:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lokhttp3/n;

.field private h:Lokhttp3/internal/connection/d;

.field public i:Lokhttp3/internal/connection/e;

.field private j:Lokhttp3/internal/connection/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/internal/connection/i$a;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/i$a;-><init>(Lokhttp3/internal/connection/i;)V

    iput-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokio/AsyncTimeout;

    .line 3
    iput-object p1, p0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    .line 4
    sget-object v1, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltb/ba2;->i(Lokhttp3/e;)Lokhttp3/internal/connection/f;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    .line 5
    iput-object p2, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    .line 6
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, p2}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    .line 7
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokio/o;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/o;

    return-void
.end method

.method private e(Lokhttp3/l;)Lokhttp3/a;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/l;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/c;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_0
    new-instance v1, Lokhttp3/a;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/l;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/l;->x()I

    move-result v6

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    .line 6
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    .line 7
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/c;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private j(Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 5
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot release connection while it is in use"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 5
    iget-object v3, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-nez v3, :cond_3

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lokhttp3/internal/connection/i;->o:Z

    if-eqz p2, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/i;->n()Ljava/net/Socket;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    .line 7
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 8
    :cond_4
    iget-boolean v2, p0, Lokhttp3/internal/connection/i;->o:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 9
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p2}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    if-eqz v1, :cond_6

    .line 11
    iget-object p2, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    invoke-virtual {p2, v0, v1}, Lokhttp3/EventListener;->i(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_6
    if-eqz v2, :cond_9

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 12
    :goto_3
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/i;->r(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    if-eqz v3, :cond_8

    .line 13
    iget-object p2, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    invoke-virtual {p2, v0, p1}, Lokhttp3/EventListener;->c(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_4

    .line 14
    :cond_8
    iget-object p2, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    invoke-virtual {p2, v0}, Lokhttp3/EventListener;->b(Lokhttp3/Call;)V

    :cond_9
    :goto_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private r(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->n:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-object v0
.end method


# virtual methods
.method a(Lokhttp3/internal/connection/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    .line 3
    iget-object p1, p1, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/connection/i$b;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->f:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/i$b;-><init>(Lokhttp3/internal/connection/i;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Ltb/hv3;->m(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/i;->f:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->d(Lokhttp3/Call;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/i;->m:Z

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    .line 4
    iget-object v2, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/internal/connection/d;->a()Lokhttp3/internal/connection/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    invoke-virtual {v2}, Lokhttp3/internal/connection/d;->a()Lokhttp3/internal/connection/e;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lokhttp3/internal/connection/c;->b()V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lokhttp3/internal/connection/e;->c()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method g(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p4    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-eq p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-object p4

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lokhttp3/internal/connection/i;->k:Z

    xor-int/2addr p2, v2

    .line 5
    iput-boolean v2, p0, Lokhttp3/internal/connection/i;->k:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 6
    iget-boolean p3, p0, Lokhttp3/internal/connection/i;->l:Z

    if-nez p3, :cond_2

    const/4 p2, 0x1

    .line 7
    :cond_2
    iput-boolean v2, p0, Lokhttp3/internal/connection/i;->l:Z

    .line 8
    :cond_3
    iget-boolean p3, p0, Lokhttp3/internal/connection/i;->k:Z

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lokhttp3/internal/connection/i;->l:Z

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {v1}, Lokhttp3/internal/connection/c;->c()Lokhttp3/internal/connection/e;

    move-result-object p2

    iget p3, p2, Lokhttp3/internal/connection/e;->l:I

    add-int/2addr p3, v2

    iput p3, p2, Lokhttp3/internal/connection/e;->l:I

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 12
    invoke-direct {p0, p4, p1}, Lokhttp3/internal/connection/i;->j(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    :cond_5
    return-object p4

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->m:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method k(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/c;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->o:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/connection/d;->b(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v7

    .line 6
    new-instance p1, Lokhttp3/internal/connection/c;

    iget-object v4, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    iget-object v6, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/c;-><init>(Lokhttp3/internal/connection/i;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/d;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 7
    iget-object p2, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter p2

    .line 8
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lokhttp3/internal/connection/i;->k:Z

    .line 10
    iput-boolean v0, p0, Lokhttp3/internal/connection/i;->l:Z

    .line 11
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public l(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/i;->o:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/i;->j(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public m(Lokhttp3/n;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/n;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/a;->E(Lokhttp3/l;Lokhttp3/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/i;->j:Lokhttp3/internal/connection/c;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v0}, Lokhttp3/internal/connection/i;->j(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 6
    iput-object v1, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iput-object p1, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/n;

    .line 9
    new-instance v6, Lokhttp3/internal/connection/d;

    iget-object v2, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {p1}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/i;->e(Lokhttp3/l;)Lokhttp3/a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/EventListener;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/d;-><init>(Lokhttp3/internal/connection/i;Lokhttp3/internal/connection/f;Lokhttp3/a;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v6, p0, Lokhttp3/internal/connection/i;->h:Lokhttp3/internal/connection/d;

    return-void
.end method

.method n()Ljava/net/Socket;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    iget-object v1, v1, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v3, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    iget-object v3, v3, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 3
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_3

    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    .line 5
    iget-object v2, v1, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    .line 7
    iget-object v2, v1, Lokhttp3/internal/connection/e;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/internal/connection/e;->p:J

    .line 9
    iget-object v2, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v2, v1}, Lokhttp3/internal/connection/f;->d(Lokhttp3/internal/connection/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v1}, Lokhttp3/internal/connection/e;->socket()Ljava/net/Socket;

    move-result-object v0

    :cond_2
    return-object v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public o()Lokio/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/i;->n:Z

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    return-void
.end method
