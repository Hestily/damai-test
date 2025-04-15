.class public final Lokhttp3/internal/http2/e;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/e$c;,
        Lokhttp3/internal/http2/e$a;,
        Lokhttp3/internal/http2/e$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lokhttp3/internal/http2/Http2Connection;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/k;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Lokhttp3/internal/http2/e$b;

.field final h:Lokhttp3/internal/http2/e$a;

.field final i:Lokhttp3/internal/http2/e$c;

.field final j:Lokhttp3/internal/http2/e$c;

.field k:Lokhttp3/internal/http2/ErrorCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/k;)V
    .locals 3
    .param p5    # Lokhttp3/k;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lokhttp3/internal/http2/e;->a:J

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/e;->e:Ljava/util/Deque;

    .line 4
    new-instance v1, Lokhttp3/internal/http2/e$c;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/e$c;-><init>(Lokhttp3/internal/http2/e;)V

    iput-object v1, p0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    .line 5
    new-instance v1, Lokhttp3/internal/http2/e$c;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/e$c;-><init>(Lokhttp3/internal/http2/e;)V

    iput-object v1, p0, Lokhttp3/internal/http2/e;->j:Lokhttp3/internal/http2/e$c;

    const-string v1, "connection == null"

    .line 6
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput p1, p0, Lokhttp3/internal/http2/e;->c:I

    .line 8
    iput-object p2, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    .line 9
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection;->t:Lokhttp3/internal/http2/h;

    .line 10
    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->d()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lokhttp3/internal/http2/e;->b:J

    .line 11
    new-instance p1, Lokhttp3/internal/http2/e$b;

    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->s:Lokhttp3/internal/http2/h;

    invoke-virtual {p2}, Lokhttp3/internal/http2/h;->d()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lokhttp3/internal/http2/e$b;-><init>(Lokhttp3/internal/http2/e;J)V

    iput-object p1, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    .line 12
    new-instance p2, Lokhttp3/internal/http2/e$a;

    invoke-direct {p2, p0}, Lokhttp3/internal/http2/e$a;-><init>(Lokhttp3/internal/http2/e;)V

    iput-object p2, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    .line 13
    iput-boolean p4, p1, Lokhttp3/internal/http2/e$b;->f:Z

    .line 14
    iput-boolean p3, p2, Lokhttp3/internal/http2/e$a;->d:Z

    if-eqz p5, :cond_0

    .line 15
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->j()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .locals 2
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$b;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$a;->d:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-object p1, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 7
    iput-object p2, p0, Lokhttp3/internal/http2/e;->l:Ljava/io/IOException;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/e;->c:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->A(I)Lokhttp3/internal/http2/e;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method a(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/e;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    iget-boolean v1, v0, Lokhttp3/internal/http2/e$b;->f:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    iget-boolean v1, v0, Lokhttp3/internal/http2/e$a;->d:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->k()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/e;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/e;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->A(I)Lokhttp3/internal/http2/e;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    iget-boolean v1, v0, Lokhttp3/internal/http2/e$a;->c:Z

    if-nez v1, :cond_3

    .line 2
    iget-boolean v0, v0, Lokhttp3/internal/http2/e$a;->d:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/e;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_0
    throw v0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 1
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/e;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget v0, p0, Lokhttp3/internal/http2/e;->c:I

    invoke-virtual {p2, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->J(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public f(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/e;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/e;->c:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->K(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/e;->c:I

    return v0
.end method

.method public h()Lokio/Sink;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()Lokio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    return-object v0
.end method

.method public j()Z
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/e;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->a:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized k()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    iget-boolean v2, v0, Lokhttp3/internal/http2/e$b;->f:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$b;->e:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/e$a;

    iget-boolean v2, v0, Lokhttp3/internal/http2/e$a;->d:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lokhttp3/internal/http2/e$a;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lokio/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    return-object v0
.end method

.method m(Lokio/BufferedSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/http2/e$b;->e(Lokio/BufferedSource;J)V

    return-void
.end method

.method n(Lokhttp3/k;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    invoke-static {v0, p1}, Lokhttp3/internal/http2/e$b;->d(Lokhttp3/internal/http2/e$b;Lokhttp3/k;)Lokhttp3/k;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/e;->f:Z

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/e;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    iput-boolean v1, p1, Lokhttp3/internal/http2/e$b;->f:Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->k()Z

    move-result p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/e;->c:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->A(I)Lokhttp3/internal/http2/e;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized o(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p()Lokhttp3/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http2/e;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e$c;->exitAndThrowIfTimedOut()V

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/e;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/e;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/http2/e;->l:Ljava/io/IOException;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_1
    throw v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e$c;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Lokhttp3/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/e;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_0
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    iget-boolean v1, v0, Lokhttp3/internal/http2/e$b;->f:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Lokhttp3/internal/http2/e$b;->a(Lokhttp3/internal/http2/e$b;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    invoke-static {v0}, Lokhttp3/internal/http2/e$b;->b(Lokhttp3/internal/http2/e$b;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    invoke-static {v0}, Lokhttp3/internal/http2/e$b;->c(Lokhttp3/internal/http2/e$b;)Lokhttp3/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$b;

    invoke-static {v0}, Lokhttp3/internal/http2/e$b;->c(Lokhttp3/internal/http2/e$b;)Lokhttp3/k;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lokhttp3/internal/a;->EMPTY_HEADERS:Lokhttp3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 5
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public s()Lokio/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->j:Lokhttp3/internal/http2/e$c;

    return-object v0
.end method
