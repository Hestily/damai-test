.class public final Lokhttp3/internal/connection/c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/c$b;,
        Lokhttp3/internal/connection/c$a;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/internal/connection/i;

.field final b:Lokhttp3/Call;

.field final c:Lokhttp3/EventListener;

.field final d:Lokhttp3/internal/connection/d;

.field final e:Lokhttp3/internal/http/ExchangeCodec;

.field private f:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/i;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/d;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/i;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/internal/connection/d;

    .line 6
    iput-object p5, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    return-void
.end method


# virtual methods
.method a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p5    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p5}, Lokhttp3/EventListener;->p(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->n(Lokhttp3/Call;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 4
    iget-object p1, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {p1, p2, p5}, Lokhttp3/EventListener;->u(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->s(Lokhttp3/Call;J)V

    .line 6
    :cond_4
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {p1, p0, p4, p3, p5}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    return-void
.end method

.method public c()Lokhttp3/internal/connection/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/e;

    move-result-object v0

    return-object v0
.end method

.method public d(Lokhttp3/n;Z)Lokio/Sink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lokhttp3/internal/connection/c;->f:Z

    .line 2
    invoke-virtual {p1}, Lokhttp3/n;->a()Lokhttp3/o;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/o;->a()J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {p2, v2}, Lokhttp3/EventListener;->o(Lokhttp3/Call;)V

    .line 4
    iget-object p2, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {p2, p1, v0, v1}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/n;J)Lokio/Sink;

    move-result-object p1

    .line 5
    new-instance p2, Lokhttp3/internal/connection/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/c$a;-><init>(Lokhttp3/internal/connection/c;Lokio/Sink;J)V

    return-object p2
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->p(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    .line 4
    throw v0
.end method

.method public g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->p(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    .line 4
    throw v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/c;->f:Z

    return v0
.end method

.method public i()Lokhttp3/internal/ws/RealWebSocket$d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->p()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/e;->o(Lokhttp3/internal/connection/c;)Lokhttp3/internal/ws/RealWebSocket$d;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->p()V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public l(Lokhttp3/p;)Lokhttp3/q;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->t(Lokhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/p;)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v3, p1}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/p;)Lokio/Source;

    move-result-object p1

    .line 5
    new-instance v3, Lokhttp3/internal/connection/c$b;

    invoke-direct {v3, p0, p1, v1, v2}, Lokhttp3/internal/connection/c$b;-><init>(Lokhttp3/internal/connection/c;Lokio/Source;J)V

    .line 6
    new-instance p1, Ltb/k84;

    invoke-static {v3}, Lokio/h;->c(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Ltb/k84;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->u(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 8
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    .line 9
    throw p1
.end method

.method public m(Z)Lokhttp3/p$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/p$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {v0, p1, p0}, Ltb/ba2;->g(Lokhttp3/p$a;Lokhttp3/internal/connection/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->u(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 4
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    .line 5
    throw p1
.end method

.method public n(Lokhttp3/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->v(Lokhttp3/Call;Lokhttp3/p;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->w(Lokhttp3/Call;)V

    return-void
.end method

.method p(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->h()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/e;->t(Ljava/io/IOException;)V

    return-void
.end method

.method public q()V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/c;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public r(Lokhttp3/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->r(Lokhttp3/Call;)V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/n;)V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->q(Lokhttp3/Call;Lokhttp3/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->p(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 5
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/c;->p(Ljava/io/IOException;)V

    .line 6
    throw p1
.end method
