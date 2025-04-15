.class Lokhttp3/internal/connection/i$a;
.super Lokio/AsyncTimeout;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/connection/i;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/i$a;->a:Lokhttp3/internal/connection/i;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i$a;->a:Lokhttp3/internal/connection/i;

    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->d()V

    return-void
.end method
