.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lokhttp3/internal/ws/RealWebSocket$d;,
        Lokhttp3/internal/ws/RealWebSocket$b;,
        Lokhttp3/internal/ws/RealWebSocket$c;,
        Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lokhttp3/n;

.field final b:Ltb/o96;

.field private final c:Ljava/util/Random;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private f:Lokhttp3/Call;

.field private final g:Ljava/lang/Runnable;

.field private h:Lokhttp3/internal/ws/WebSocketReader;

.field private i:Lokhttp3/internal/ws/b;

.field private j:Ljava/util/concurrent/ScheduledExecutorService;

.field private k:Lokhttp3/internal/ws/RealWebSocket$d;

.field private final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:Z

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/n;Ltb/o96;Ljava/util/Random;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->l:Ljava/util/ArrayDeque;

    .line 3
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lokhttp3/internal/ws/RealWebSocket;->q:I

    .line 5
    invoke-virtual {p1}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->a:Lokhttp3/n;

    .line 7
    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket;->c:Ljava/util/Random;

    .line 8
    iput-wide p4, p0, Lokhttp3/internal/ws/RealWebSocket;->d:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 9
    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 10
    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->e:Ljava/lang/String;

    .line 11
    new-instance p1, Ltb/r84;

    invoke-direct {p1, p0}, Ltb/r84;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->g:Ljava/lang/Runnable;

    return-void

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic a(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->g()V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/ws/RealWebSocket;->j()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized i(Lokio/ByteString;I)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J

    .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$c;

    invoke-direct {v1, p2, p1}, Lokhttp3/internal/ws/RealWebSocket$c;-><init>(ILokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 8
    monitor-exit p0

    return p1

    .line 9
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method b(Lokhttp3/p;Lokhttp3/internal/connection/c;)V
    .locals 4
    .param p2    # Lokhttp3/internal/connection/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokhttp3/p;->e()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_4

    const-string v0, "Connection"

    .line 2
    invoke-virtual {p1, v0}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {p1, v2}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "websocket"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Sec-WebSocket-Accept"

    .line 6
    invoke-virtual {p1, v0}, Lokhttp3/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected HTTP 101 response but was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Lokhttp3/p;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/p;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method declared-synchronized c(ILjava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lokhttp3/internal/ws/a;->c(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->o:Z

    .line 7
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    new-instance v2, Lokhttp3/internal/ws/RealWebSocket$b;

    invoke-direct {v2, p1, v0, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$b;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 10
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->f:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->c(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public d(Lokhttp3/OkHttpClient;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$b;

    move-result-object p1

    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    .line 2
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$b;->g(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$b;

    move-result-object p1

    sget-object v0, Lokhttp3/internal/ws/RealWebSocket;->x:Ljava/util/List;

    .line 3
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$b;->i(Ljava/util/List;)Lokhttp3/OkHttpClient$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$b;->b()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->a:Lokhttp3/n;

    invoke-virtual {v0}, Lokhttp3/n;->g()Lokhttp3/n$a;

    move-result-object v0

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    .line 6
    invoke-virtual {v0, v1, v2}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    const-string v2, "Connection"

    .line 7
    invoke-virtual {v0, v2, v1}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->e:Ljava/lang/String;

    const-string v2, "Sec-WebSocket-Key"

    .line 8
    invoke-virtual {v0, v2, v1}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    .line 9
    invoke-virtual {v0, v1, v2}, Lokhttp3/n$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/n$a;->a()Lokhttp3/n;

    move-result-object v0

    .line 11
    sget-object v1, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {v1, p1, v0}, Ltb/ba2;->h(Lokhttp3/OkHttpClient;Lokhttp3/n;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->f:Lokhttp3/Call;

    .line 12
    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$a;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/ws/RealWebSocket$a;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/n;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;Lokhttp3/p;)V
    .locals 2
    .param p2    # Lokhttp3/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    .line 4
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 8
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 10
    invoke-static {p1}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public f(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 3
    new-instance v0, Lokhttp3/internal/ws/b;

    iget-boolean v1, p2, Lokhttp3/internal/ws/RealWebSocket$d;->a:Z

    iget-object v2, p2, Lokhttp3/internal/ws/RealWebSocket$d;->c:Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->c:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/ws/b;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->i:Lokhttp3/internal/ws/b;

    .line 4
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lokhttp3/internal/a;->I(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-direct {v4, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 6
    new-instance v5, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v5, p0}, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    iget-wide v8, p0, Lokhttp3/internal/ws/RealWebSocket;->d:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 7
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->h()V

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p1, Lokhttp3/internal/ws/WebSocketReader;

    iget-boolean v0, p2, Lokhttp3/internal/ws/RealWebSocket$d;->a:Z

    iget-object p2, p2, Lokhttp3/internal/ws/RealWebSocket$d;->b:Lokio/BufferedSource;

    invoke-direct {p1, v0, p2, p0}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->h:Lokhttp3/internal/ws/WebSocketReader;

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

.method j()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->i:Lokhttp3/internal/ws/b;

    .line 5
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 6
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 7
    instance-of v5, v4, Lokhttp3/internal/ws/RealWebSocket$b;

    if-eqz v5, :cond_2

    .line 8
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->q:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 9
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 10
    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 11
    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v5, p0}, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    move-object v6, v4

    check-cast v6, Lokhttp3/internal/ws/RealWebSocket$b;

    iget-wide v6, v6, Lokhttp3/internal/ws/RealWebSocket$b;->c:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 13
    monitor-exit p0

    return v1

    :cond_3
    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v3

    move-object v4, v1

    .line 14
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    .line 15
    :try_start_1
    invoke-virtual {v0, v2}, Lokhttp3/internal/ws/b;->f(Lokio/ByteString;)V

    goto :goto_2

    .line 16
    :cond_5
    instance-of v2, v4, Lokhttp3/internal/ws/RealWebSocket$c;

    if-eqz v2, :cond_6

    .line 17
    move-object v2, v4

    check-cast v2, Lokhttp3/internal/ws/RealWebSocket$c;

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket$c;->b:Lokio/ByteString;

    .line 18
    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$c;

    iget v3, v4, Lokhttp3/internal/ws/RealWebSocket$c;->a:I

    .line 19
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    .line 20
    invoke-virtual {v0, v3, v4, v5}, Lokhttp3/internal/ws/b;->a(IJ)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/h;->b(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 21
    invoke-interface {v0, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 22
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 23
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    iget-wide v3, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J

    .line 25
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 26
    :cond_6
    instance-of v2, v4, Lokhttp3/internal/ws/RealWebSocket$b;

    if-eqz v2, :cond_8

    .line 27
    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$b;

    .line 28
    iget v2, v4, Lokhttp3/internal/ws/RealWebSocket$b;->a:I

    iget-object v4, v4, Lokhttp3/internal/ws/RealWebSocket$b;->b:Lokio/ByteString;

    invoke-virtual {v0, v2, v4}, Lokhttp3/internal/ws/b;->b(ILokio/ByteString;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_7

    :goto_2
    const/4 v0, 0x1

    .line 29
    invoke-static {v1}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    return v0

    .line 30
    :cond_7
    :try_start_4
    throw v3

    .line 31
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 32
    invoke-static {v1}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 33
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method k()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->i:Lokhttp3/internal/ws/b;

    .line 4
    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->w:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->t:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 5
    :goto_0
    iget v3, p0, Lokhttp3/internal/ws/RealWebSocket;->t:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lokhttp3/internal/ws/RealWebSocket;->t:I

    .line 6
    iput-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->w:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 8
    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lokhttp3/internal/ws/RealWebSocket;->d:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    return-void

    .line 9
    :cond_2
    :try_start_1
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lokhttp3/internal/ws/b;->e(Lokio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0, v0, v3}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->q:I

    if-ne v1, v0, :cond_2

    .line 3
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->q:I

    .line 4
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->r:Ljava/lang/String;

    .line 5
    iget-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket;->o:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 7
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->k:Lokhttp3/internal/ws/RealWebSocket$d;

    .line 8
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 9
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 10
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 12
    invoke-static {p1}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    throw p2

    .line 13
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onReadMessage(Lokio/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->h()V

    .line 4
    iget p1, p0, Lokhttp3/internal/ws/RealWebSocket;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget p1, p0, Lokhttp3/internal/ws/RealWebSocket;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->v:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lokhttp3/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->a:Lokhttp3/n;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->i(Lokio/ByteString;I)Z

    move-result p1

    return p1
.end method

.method public send(Lokio/ByteString;)Z
    .locals 1

    const-string v0, "bytes == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->i(Lokio/ByteString;I)Z

    move-result p1

    return p1
.end method
