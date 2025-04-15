.class Lokhttp3/OkHttpClient$a;
.super Ltb/ba2;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltb/ba2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/k$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lokhttp3/k$a;->b(Ljava/lang/String;)Lokhttp3/k$a;

    return-void
.end method

.method public b(Lokhttp3/k$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lokhttp3/k$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/k$a;

    return-void
.end method

.method public c(Lokhttp3/f;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lokhttp3/f;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public d(Lokhttp3/p$a;)I
    .locals 0

    .line 1
    iget p1, p1, Lokhttp3/p$a;->c:I

    return p1
.end method

.method public e(Lokhttp3/a;Lokhttp3/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lokhttp3/a;->d(Lokhttp3/a;)Z

    move-result p1

    return p1
.end method

.method public f(Lokhttp3/p;)Lokhttp3/internal/connection/c;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p1, Lokhttp3/p;->m:Lokhttp3/internal/connection/c;

    return-object p1
.end method

.method public g(Lokhttp3/p$a;Lokhttp3/internal/connection/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lokhttp3/p$a;->k(Lokhttp3/internal/connection/c;)V

    return-void
.end method

.method public h(Lokhttp3/OkHttpClient;Lokhttp3/n;)Lokhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/n;Z)Lokhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public i(Lokhttp3/e;)Lokhttp3/internal/connection/f;
    .locals 0

    .line 1
    iget-object p1, p1, Lokhttp3/e;->a:Lokhttp3/internal/connection/f;

    return-object p1
.end method
