.class public abstract Lokhttp3/internal/http2/Http2Connection$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$b$a;

    invoke-direct {v0}, Lokhttp3/internal/http2/Http2Connection$b$a;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection$b;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    return-void
.end method

.method public abstract b(Lokhttp3/internal/http2/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
