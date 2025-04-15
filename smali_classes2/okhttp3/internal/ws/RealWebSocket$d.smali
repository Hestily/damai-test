.class public abstract Lokhttp3/internal/ws/RealWebSocket$d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lokio/BufferedSource;

.field public final c:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket$d;->a:Z

    .line 3
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$d;->b:Lokio/BufferedSource;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket$d;->c:Lokio/BufferedSink;

    return-void
.end method
