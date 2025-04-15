.class public final Lokhttp3/internal/cache/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final a:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1    # Lokhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private a(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/p;)Lokhttp3/p;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 2
    :cond_1
    invoke-virtual {p2}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/q;->m()Lokio/BufferedSource;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 4
    new-instance v2, Lokhttp3/internal/cache/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp3/internal/cache/a$a;-><init>(Lokhttp3/internal/cache/a;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    const-string p1, "Content-Type"

    .line 5
    invoke-virtual {p2, p1}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/q;->g()J

    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object p2

    new-instance v3, Ltb/k84;

    .line 8
    invoke-static {v2}, Lokio/h;->c(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Ltb/k84;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {p2, v3}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lokhttp3/k;Lokhttp3/k;)Lokhttp3/k;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0}, Lokhttp3/k$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokhttp3/k;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Lokhttp3/k;->e(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lokhttp3/k;->i(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/cache/a;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-static {v4}, Lokhttp3/internal/cache/a;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Lokhttp3/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 9
    :cond_1
    sget-object v6, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {v6, v0, v4, v5}, Ltb/ba2;->b(Lokhttp3/k$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lokhttp3/k;->h()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 11
    invoke-virtual {p1, v2}, Lokhttp3/k;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lokhttp3/internal/cache/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lokhttp3/internal/cache/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    sget-object v3, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {p1, v2}, Lokhttp3/k;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Ltb/ba2;->b(Lokhttp3/k$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v0}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Lokhttp3/p;)Lokhttp3/p;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/p;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/n;)Lokhttp3/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lokhttp3/internal/cache/b$a;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/n;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lokhttp3/internal/cache/b$a;-><init>(JLokhttp3/n;Lokhttp3/p;)V

    invoke-virtual {v3}, Lokhttp3/internal/cache/b$a;->c()Lokhttp3/internal/cache/b;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lokhttp3/internal/cache/b;->a:Lokhttp3/n;

    .line 6
    iget-object v3, v1, Lokhttp3/internal/cache/b;->b:Lokhttp3/p;

    .line 7
    iget-object v4, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v1}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/b;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 10
    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    .line 11
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object p1

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 12
    invoke-virtual {p1, v0}, Lokhttp3/p$a;->o(Lokhttp3/Protocol;)Lokhttp3/p$a;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 13
    invoke-virtual {p1, v0}, Lokhttp3/p$a;->g(I)Lokhttp3/p$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {p1, v0}, Lokhttp3/p$a;->l(Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object p1

    sget-object v0, Lokhttp3/internal/a;->EMPTY_RESPONSE:Lokhttp3/q;

    .line 15
    invoke-virtual {p1, v0}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Lokhttp3/p$a;->r(J)Lokhttp3/p$a;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokhttp3/p$a;->p(J)Lokhttp3/p$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v3}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object p1

    .line 20
    invoke-static {v3}, Lokhttp3/internal/cache/a;->e(Lokhttp3/p;)Lokhttp3/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/p$a;->d(Lokhttp3/p;)Lokhttp3/p$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    return-object p1

    .line 22
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/n;)Lokhttp3/p;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {p1}, Lokhttp3/p;->e()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 25
    invoke-virtual {v3}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object v0

    .line 26
    invoke-virtual {v3}, Lokhttp3/p;->j()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/p;->j()Lokhttp3/k;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/internal/cache/a;->b(Lokhttp3/k;Lokhttp3/k;)Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/p$a;->j(Lokhttp3/k;)Lokhttp3/p$a;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lokhttp3/p;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/p$a;->r(J)Lokhttp3/p$a;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lokhttp3/p;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/p$a;->p(J)Lokhttp3/p$a;

    move-result-object v0

    .line 29
    invoke-static {v3}, Lokhttp3/internal/cache/a;->e(Lokhttp3/p;)Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/p$a;->d(Lokhttp3/p;)Lokhttp3/p$a;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lokhttp3/internal/cache/a;->e(Lokhttp3/p;)Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/p$a;->m(Lokhttp3/p;)Lokhttp3/p$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/q;->close()V

    .line 33
    iget-object p1, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 34
    iget-object p1, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/p;Lokhttp3/p;)V

    return-object v0

    .line 35
    :cond_6
    invoke-virtual {v3}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    .line 36
    :cond_7
    invoke-virtual {p1}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object v0

    .line 37
    invoke-static {v3}, Lokhttp3/internal/cache/a;->e(Lokhttp3/p;)Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/p$a;->d(Lokhttp3/p;)Lokhttp3/p$a;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lokhttp3/internal/cache/a;->e(Lokhttp3/p;)Lokhttp3/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/p$a;->m(Lokhttp3/p;)Lokhttp3/p$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_9

    .line 41
    invoke-static {p1}, Ltb/w42;->c(Lokhttp3/p;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lokhttp3/internal/cache/b;->a(Lokhttp3/p;Lokhttp3/n;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    iget-object v0, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/p;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/cache/a;->a(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/p;)Lokhttp3/p;

    move-result-object p1

    return-object p1

    .line 44
    :cond_8
    invoke-virtual {v2}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/z42;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/n;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
