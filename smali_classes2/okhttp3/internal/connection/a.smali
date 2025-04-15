.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/p;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/c;

    .line 2
    invoke-virtual {v0}, Lokhttp3/internal/http/c;->request()Lokhttp3/n;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/http/c;->c()Lokhttp3/internal/connection/i;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lokhttp3/n;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/connection/i;->k(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/c;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/http/c;->b(Lokhttp3/n;Lokhttp3/internal/connection/i;Lokhttp3/internal/connection/c;)Lokhttp3/p;

    move-result-object p1

    return-object p1
.end method
