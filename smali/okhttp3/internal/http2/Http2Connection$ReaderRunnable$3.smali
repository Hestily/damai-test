.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lokhttp3/internal/NamedRunnable;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLokhttp3/internal/http2/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->b:Lokhttp3/internal/http2/Http2Connection$b;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection$b;->a(Lokhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
