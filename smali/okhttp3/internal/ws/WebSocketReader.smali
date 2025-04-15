.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Lokio/BufferedSource;

.field final c:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field private final d:Lokio/Buffer;

.field private final e:Lokio/Buffer;

.field private final f:[B

.field private final g:Lokio/Buffer$c;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->d:Lokio/Buffer;

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->e:Lokio/Buffer;

    const-string v0, "source == null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "frameCallback == null"

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->a:Z

    .line 7
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    .line 8
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    new-array p3, p3, [B

    .line 9
    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->f:[B

    if-eqz p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Lokio/Buffer$c;

    invoke-direct {p2}, Lokio/Buffer$c;-><init>()V

    :goto_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->g:Lokio/Buffer$c;

    return-void
.end method
