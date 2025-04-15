.class Lokhttp3/internal/ws/RealWebSocket$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->d(Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/n;

.field final synthetic b:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$a;->a:Lokhttp3/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/p;)V
    .locals 2

    .line 1
    sget-object p1, Ltb/ba2;->a:Ltb/ba2;

    invoke-virtual {p1, p2}, Ltb/ba2;->f(Lokhttp3/p;)Lokhttp3/internal/connection/c;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/ws/RealWebSocket;->b(Lokhttp3/p;Lokhttp3/internal/connection/c;)V

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/connection/c;->i()Lokhttp3/internal/ws/RealWebSocket$d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->a:Lokhttp3/n;

    invoke-virtual {v1}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v0, p1}, Lokhttp3/internal/ws/RealWebSocket;->f(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$d;)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    iget-object p1, p1, Lokhttp3/internal/ws/RealWebSocket;->b:Ltb/o96;

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    return-void

    :catch_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lokhttp3/internal/connection/c;->q()V

    .line 9
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$a;->b:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1, v0, p2}, Lokhttp3/internal/ws/RealWebSocket;->e(Ljava/lang/Exception;Lokhttp3/p;)V

    .line 10
    invoke-static {p2}, Lokhttp3/internal/a;->g(Ljava/io/Closeable;)V

    return-void
.end method
