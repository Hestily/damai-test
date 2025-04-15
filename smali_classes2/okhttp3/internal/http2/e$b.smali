.class final Lokhttp3/internal/http2/e$b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lokio/Buffer;

.field private final b:Lokio/Buffer;

.field private final c:J

.field private d:Lokhttp3/k;

.field e:Z

.field f:Z

.field final synthetic g:Lokhttp3/internal/http2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    .line 3
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    .line 4
    iput-wide p2, p0, Lokhttp3/internal/http2/e$b;->c:J

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/http2/e$b;)Lokio/Buffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    return-object p0
.end method

.method static synthetic b(Lokhttp3/internal/http2/e$b;)Lokio/Buffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    return-object p0
.end method

.method static synthetic c(Lokhttp3/internal/http2/e$b;)Lokhttp3/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e$b;->d:Lokhttp3/k;

    return-object p0
.end method

.method static synthetic d(Lokhttp3/internal/http2/e$b;Lokhttp3/k;)Lokhttp3/k;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->d:Lokhttp3/k;

    return-object p1
.end method

.method private f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v0, v0, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->F(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/e$b;->e:Z

    .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 7
    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/e$b;->f(J)V

    .line 8
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method e(Lokio/BufferedSource;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 1
    iget-object v2, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/e$b;->f:Z

    .line 3
    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/e$b;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 5
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/e;->f(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 8
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-boolean v3, p0, Lokhttp3/internal/http2/e$b;->e:Z

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 12
    iget-object v5, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 14
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->a:Lokio/Buffer;

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v8, :cond_6

    .line 15
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6
    move-wide v3, v0

    .line 16
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    .line 17
    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/e$b;->f(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    :goto_0
    const/4 v2, 0x0

    .line 1
    iget-object v3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v4, v4, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v5, v4, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v5, :cond_1

    .line 4
    iget-object v2, v4, Lokhttp3/internal/http2/e;->l:Ljava/io/IOException;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/StreamResetException;

    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v4, v4, Lokhttp3/internal/http2/e;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v2, v4}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 6
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lokhttp3/internal/http2/e$b;->e:Z

    if-nez v4, :cond_7

    .line 7
    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    .line 8
    iget-object v4, p0, Lokhttp3/internal/http2/e$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v4, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 9
    iget-object p3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-wide v4, p3, Lokhttp3/internal/http2/e;->a:J

    add-long/2addr v4, p1

    iput-wide v4, p3, Lokhttp3/internal/http2/e;->a:J

    if-nez v2, :cond_4

    .line 10
    iget-object p3, p3, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->s:Lokhttp3/internal/http2/h;

    .line 11
    invoke-virtual {p3}, Lokhttp3/internal/http2/h;->d()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v8, p3

    cmp-long p3, v4, v8

    if-ltz p3, :cond_4

    .line 12
    iget-object p3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v4, p3, Lokhttp3/internal/http2/e;->d:Lokhttp3/internal/http2/Http2Connection;

    iget v5, p3, Lokhttp3/internal/http2/e;->c:I

    iget-wide v8, p3, Lokhttp3/internal/http2/e;->a:J

    invoke-virtual {v4, v5, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->L(IJ)V

    .line 13
    iget-object p3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iput-wide v0, p3, Lokhttp3/internal/http2/e;->a:J

    goto :goto_2

    .line 14
    :cond_2
    iget-boolean v4, p0, Lokhttp3/internal/http2/e$b;->f:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v2, v2, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e$c;->exitAndThrowIfTimedOut()V

    monitor-exit v3

    goto :goto_0

    :cond_3
    move-wide p1, v6

    :cond_4
    :goto_2
    iget-object p3, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object p3, p3, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {p3}, Lokhttp3/internal/http2/e$c;->exitAndThrowIfTimedOut()V

    .line 17
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long p3, p1, v6

    if-eqz p3, :cond_5

    .line 18
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/e$b;->f(J)V

    return-wide p1

    :cond_5
    if-nez v2, :cond_6

    return-wide v6

    .line 19
    :cond_6
    throw v2

    .line 20
    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    :try_start_4
    iget-object p2, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object p2, p2, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    invoke-virtual {p2}, Lokhttp3/internal/http2/e$c;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->g:Lokhttp3/internal/http2/e;

    iget-object v0, v0, Lokhttp3/internal/http2/e;->i:Lokhttp3/internal/http2/e$c;

    return-object v0
.end method
