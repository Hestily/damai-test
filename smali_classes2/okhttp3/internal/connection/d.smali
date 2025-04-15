.class final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final a:Lokhttp3/internal/connection/i;

.field private final b:Lokhttp3/a;

.field private final c:Lokhttp3/internal/connection/f;

.field private final d:Lokhttp3/Call;

.field private final e:Lokhttp3/EventListener;

.field private f:Lokhttp3/internal/connection/h$a;

.field private final g:Lokhttp3/internal/connection/h;

.field private h:Lokhttp3/internal/connection/e;

.field private i:Z

.field private j:Lokhttp3/r;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/connection/i;Lokhttp3/internal/connection/f;Lokhttp3/a;Lokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    .line 6
    iput-object p5, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    .line 7
    new-instance p1, Lokhttp3/internal/connection/h;

    iget-object p2, p2, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/g;

    invoke-direct {p1, p3, p2, p4, p5}, Lokhttp3/internal/connection/h;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/g;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object p1, p0, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    return-void
.end method

.method private c(IIIIZ)Lokhttp3/internal/connection/e;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->i()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v1, Lokhttp3/internal/connection/d;->i:Z

    .line 4
    iget-object v3, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v4, v3, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 5
    iget-boolean v6, v4, Lokhttp3/internal/connection/e;->j:Z

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v3}, Lokhttp3/internal/connection/i;->n()Ljava/net/Socket;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 7
    :goto_0
    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v7, v6, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    if-eqz v7, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 8
    iget-object v9, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    iget-object v10, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    invoke-virtual {v9, v10, v6, v5, v0}, Lokhttp3/internal/connection/f;->h(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v7, v6, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    move-object v6, v5

    const/4 v9, 0x1

    goto :goto_3

    .line 10
    :cond_2
    iget-object v6, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/r;

    if-eqz v6, :cond_3

    .line 11
    iput-object v5, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/r;

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/d;->g()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v6, v6, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->route()Lokhttp3/r;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    const/4 v9, 0x0

    .line 14
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    invoke-static {v3}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    if-eqz v4, :cond_5

    .line 16
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    invoke-virtual {v2, v3, v4}, Lokhttp3/EventListener;->i(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_5
    if-eqz v9, :cond_6

    .line 17
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    invoke-virtual {v2, v3, v7}, Lokhttp3/EventListener;->h(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_6
    if-eqz v7, :cond_7

    return-object v7

    :cond_7
    if-nez v6, :cond_9

    .line 18
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h$a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lokhttp3/internal/connection/h$a;->b()Z

    move-result v2

    if-nez v2, :cond_9

    .line 19
    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    invoke-virtual {v2}, Lokhttp3/internal/connection/h;->d()Lokhttp3/internal/connection/h$a;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h$a;

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 20
    :goto_4
    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v3

    .line 21
    :try_start_1
    iget-object v4, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v4}, Lokhttp3/internal/connection/i;->i()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v2, :cond_a

    .line 22
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h$a;

    invoke-virtual {v2}, Lokhttp3/internal/connection/h$a;->a()Ljava/util/List;

    move-result-object v2

    .line 23
    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    iget-object v10, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v11, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v4, v10, v11, v2, v0}, Lokhttp3/internal/connection/f;->h(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v7, v0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    move-object v2, v5

    :cond_b
    :goto_5
    if-nez v9, :cond_d

    if-nez v6, :cond_c

    .line 25
    iget-object v0, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h$a;

    invoke-virtual {v0}, Lokhttp3/internal/connection/h$a;->c()Lokhttp3/r;

    move-result-object v0

    move-object v6, v0

    .line 26
    :cond_c
    new-instance v7, Lokhttp3/internal/connection/e;

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    invoke-direct {v7, v0, v6}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/internal/connection/f;Lokhttp3/r;)V

    .line 27
    iput-object v7, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/internal/connection/e;

    .line 28
    :cond_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_e

    .line 29
    iget-object v0, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    invoke-virtual {v0, v2, v7}, Lokhttp3/EventListener;->h(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v7

    .line 30
    :cond_e
    iget-object v0, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    move-object v10, v7

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lokhttp3/internal/connection/e;->d(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 31
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    iget-object v0, v0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/g;

    invoke-virtual {v7}, Lokhttp3/internal/connection/e;->route()Lokhttp3/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/g;->a(Lokhttp3/r;)V

    .line 32
    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v4

    .line 33
    :try_start_2
    iput-object v5, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/internal/connection/e;

    .line 34
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v9, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v0, v3, v9, v2, v8}, Lokhttp3/internal/connection/f;->h(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    iput-boolean v8, v7, Lokhttp3/internal/connection/e;->j:Z

    .line 36
    invoke-virtual {v7}, Lokhttp3/internal/connection/e;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 37
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v7, v0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    .line 38
    iput-object v6, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/r;

    goto :goto_6

    .line 39
    :cond_f
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/f;->g(Lokhttp3/internal/connection/e;)V

    .line 40
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/i;->a(Lokhttp3/internal/connection/e;)V

    .line 41
    :goto_6
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {v5}, Lokhttp3/internal/a;->h(Ljava/net/Socket;)V

    .line 43
    iget-object v0, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/Call;

    invoke-virtual {v0, v2, v7}, Lokhttp3/EventListener;->h(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v7

    :catchall_0
    move-exception v0

    .line 44
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 45
    :cond_10
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 46
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 47
    :cond_11
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 48
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private d(IIIIZZ)Lokhttp3/internal/connection/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->c(IIIIZ)Lokhttp3/internal/connection/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, v0, Lokhttp3/internal/connection/e;->l:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/e;->l(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->p()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    if-eqz v0, :cond_0

    iget v1, v0, Lokhttp3/internal/connection/e;->k:I

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->route()Lokhttp3/r;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/l;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/a;->E(Lokhttp3/l;Lokhttp3/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()Lokhttp3/internal/connection/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->h:Lokhttp3/internal/connection/e;

    return-object v0
.end method

.method public b(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;
    .locals 7

    .line 1
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 2
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 3
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 6
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/d;->d(IIIIZZ)Lokhttp3/internal/connection/e;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Lokhttp3/internal/connection/e;->n(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object p1
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/connection/d;->h()V

    .line 9
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p0}, Lokhttp3/internal/connection/d;->h()V

    .line 11
    throw p1
.end method

.method e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/r;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/i;

    iget-object v1, v1, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v1}, Lokhttp3/internal/connection/e;->route()Lokhttp3/r;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/r;

    .line 6
    monitor-exit v0

    return v2

    .line 7
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/internal/connection/h$a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    .line 8
    invoke-virtual {v1}, Lokhttp3/internal/connection/h;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/d;->i:Z

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

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/d;->i:Z

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
