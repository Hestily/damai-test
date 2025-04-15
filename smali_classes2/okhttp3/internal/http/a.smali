.class public final Lokhttp3/internal/http/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http/a;->a:Lokhttp3/CookieJar;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltb/t80;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltb/t80;

    .line 5
    invoke-virtual {v3}, Ltb/t80;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ltb/t80;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/p;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/n;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/n;->g()Lokhttp3/n$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lokhttp3/o;->b()Ltb/wo2;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Ltb/wo2;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lokhttp3/o;->a()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    .line 8
    invoke-virtual {v1, v2}, Lokhttp3/n$a;->g(Ljava/lang/String;)Lokhttp3/n$a;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    .line 9
    invoke-virtual {v1, v2, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    .line 10
    invoke-virtual {v1, v6}, Lokhttp3/n$a;->g(Ljava/lang/String;)Lokhttp3/n$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v7

    invoke-static {v7, v8}, Lokhttp3/internal/a;->s(Lokhttp3/l;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v1, v2, v9}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    .line 17
    :cond_5
    iget-object v2, p0, Lokhttp3/internal/http/a;->a:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v7

    invoke-interface {v2, v7}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/l;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 19
    invoke-direct {p0, v2}, Lokhttp3/internal/http/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 21
    invoke-static {}, Ltb/tz5;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    .line 22
    :cond_7
    invoke-virtual {v1}, Lokhttp3/n$a;->a()Lokhttp3/n;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/n;)Lokhttp3/p;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lokhttp3/internal/http/a;->a:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/p;->j()Lokhttp3/k;

    move-result-object v7

    invoke-static {v1, v2, v7}, Ltb/w42;->e(Lokhttp3/CookieJar;Lokhttp3/l;Lokhttp3/k;)V

    .line 24
    invoke-virtual {p1}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v1}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Ltb/w42;->c(Lokhttp3/p;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Lokio/f;

    invoke-virtual {p1}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/q;->m()Lokio/BufferedSource;

    move-result-object v7

    invoke-direct {v2, v7}, Lokio/f;-><init>(Lokio/Source;)V

    .line 29
    invoke-virtual {p1}, Lokhttp3/p;->j()Lokhttp3/k;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/k;->f()Lokhttp3/k$a;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v1}, Lokhttp3/k$a;->f(Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v6}, Lokhttp3/k$a;->f(Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lokhttp3/p$a;->j(Lokhttp3/k;)Lokhttp3/p$a;

    .line 34
    invoke-virtual {p1, v3}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Ltb/k84;

    invoke-static {v2}, Lokio/h;->c(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Ltb/k84;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    .line 36
    :cond_8
    invoke-virtual {v0}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    return-object p1
.end method
