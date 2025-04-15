.class public final Lokhttp3/internal/http/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lokhttp3/internal/http/b;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/p;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lokhttp3/internal/http/c;

    .line 2
    invoke-virtual {p1}, Lokhttp3/internal/http/c;->a()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/http/c;->request()Lokhttp3/n;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/c;->r(Lokhttp3/n;)V

    .line 6
    invoke-virtual {p1}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltb/z42;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "Expect"

    .line 7
    invoke-virtual {p1, v3}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "100-continue"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->g()V

    .line 9
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->o()V

    .line 10
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->m(Z)Lokhttp3/p$a;

    move-result-object v5

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v5, :cond_2

    .line 11
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/o;->f()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->g()V

    .line 13
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/c;->d(Lokhttp3/n;Z)Lokio/Sink;

    move-result-object v6

    .line 14
    invoke-static {v6}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v6

    .line 15
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/o;->h(Lokio/BufferedSink;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, p1, v4}, Lokhttp3/internal/connection/c;->d(Lokhttp3/n;Z)Lokio/Sink;

    move-result-object v6

    .line 17
    invoke-static {v6}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v6

    .line 18
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/o;->h(Lokio/BufferedSink;)V

    .line 19
    invoke-interface {v6}, Lokio/Sink;->close()V

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->k()V

    .line 21
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->c()Lokhttp3/internal/connection/e;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->m()Z

    move-result v6

    if-nez v6, :cond_4

    .line 22
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->j()V

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->k()V

    const/4 v3, 0x0

    .line 24
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/o;->f()Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    :cond_5
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    :cond_6
    if-nez v3, :cond_7

    .line 26
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->o()V

    :cond_7
    if-nez v5, :cond_8

    .line 27
    invoke-virtual {v0, v4}, Lokhttp3/internal/connection/c;->m(Z)Lokhttp3/p$a;

    move-result-object v5

    .line 28
    :cond_8
    invoke-virtual {v5, p1}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->c()Lokhttp3/internal/connection/e;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->handshake()Lokhttp3/j;

    move-result-object v5

    invoke-virtual {v3, v5}, Lokhttp3/p$a;->h(Lokhttp3/j;)Lokhttp3/p$a;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v1, v2}, Lokhttp3/p$a;->r(J)Lokhttp3/p$a;

    move-result-object v3

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lokhttp3/p$a;->p(J)Lokhttp3/p$a;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lokhttp3/p;->e()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_9

    .line 34
    invoke-virtual {v0, v4}, Lokhttp3/internal/connection/c;->m(Z)Lokhttp3/p$a;

    move-result-object v3

    .line 35
    invoke-virtual {v3, p1}, Lokhttp3/p$a;->q(Lokhttp3/n;)Lokhttp3/p$a;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->c()Lokhttp3/internal/connection/e;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/connection/e;->handshake()Lokhttp3/j;

    move-result-object v3

    invoke-virtual {p1, v3}, Lokhttp3/p$a;->h(Lokhttp3/j;)Lokhttp3/p$a;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v1, v2}, Lokhttp3/p$a;->r(J)Lokhttp3/p$a;

    move-result-object p1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lokhttp3/p$a;->p(J)Lokhttp3/p$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lokhttp3/p;->e()I

    move-result v5

    .line 41
    :cond_9
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/c;->n(Lokhttp3/p;)V

    .line 42
    iget-boolean p1, p0, Lokhttp3/internal/http/b;->a:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x65

    if-ne v5, p1, :cond_a

    .line 43
    invoke-virtual {v3}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object p1

    sget-object v1, Lokhttp3/internal/a;->EMPTY_RESPONSE:Lokhttp3/q;

    .line 44
    invoke-virtual {p1, v1}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    goto :goto_2

    .line 46
    :cond_a
    invoke-virtual {v3}, Lokhttp3/p;->l()Lokhttp3/p$a;

    move-result-object p1

    .line 47
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/c;->l(Lokhttp3/p;)Lokhttp3/q;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/p$a;->b(Lokhttp3/q;)Lokhttp3/p$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lokhttp3/p$a;->c()Lokhttp3/p;

    move-result-object p1

    .line 49
    :goto_2
    invoke-virtual {p1}, Lokhttp3/p;->o()Lokhttp3/n;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lokhttp3/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 50
    invoke-virtual {p1, v2}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 51
    :cond_b
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->j()V

    :cond_c
    const/16 v0, 0xcc

    if-eq v5, v0, :cond_d

    const/16 v0, 0xcd

    if-ne v5, v0, :cond_e

    .line 52
    :cond_d
    invoke-virtual {p1}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/q;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    :cond_e
    return-object p1

    .line 53
    :cond_f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Lokhttp3/p;->a()Lokhttp3/q;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/q;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
