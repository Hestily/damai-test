.class Lokhttp3/internal/connection/e$a;
.super Lokhttp3/internal/ws/RealWebSocket$d;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/e;->o(Lokhttp3/internal/connection/c;)Lokhttp3/internal/ws/RealWebSocket$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/internal/connection/c;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/e;ZLokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/c;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lokhttp3/internal/connection/e$a;->d:Lokhttp3/internal/connection/c;

    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$d;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e$a;->d:Lokhttp3/internal/connection/c;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/c;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method
