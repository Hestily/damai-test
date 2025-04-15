.class public Lokhttp3/p$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lokhttp3/n;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Lokhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:I

.field d:Ljava/lang/String;

.field e:Lokhttp3/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lokhttp3/k$a;

.field g:Lokhttp3/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field i:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field j:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:J

.field l:J

.field m:Lokhttp3/internal/connection/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lokhttp3/p$a;->c:I

    .line 3
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0}, Lokhttp3/k$a;-><init>()V

    iput-object v0, p0, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    return-void
.end method

.method constructor <init>(Lokhttp3/p;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lokhttp3/p$a;->c:I

    .line 6
    iget-object v0, p1, Lokhttp3/p;->a:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/p$a;->a:Lokhttp3/n;

    .line 7
    iget-object v0, p1, Lokhttp3/p;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/p$a;->b:Lokhttp3/Protocol;

    .line 8
    iget v0, p1, Lokhttp3/p;->c:I

    iput v0, p0, Lokhttp3/p$a;->c:I

    .line 9
    iget-object v0, p1, Lokhttp3/p;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/p$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lokhttp3/p;->e:Lokhttp3/j;

    iput-object v0, p0, Lokhttp3/p$a;->e:Lokhttp3/j;

    .line 11
    iget-object v0, p1, Lokhttp3/p;->f:Lokhttp3/k;

    invoke-virtual {v0}, Lokhttp3/k;->f()Lokhttp3/k$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    .line 12
    iget-object v0, p1, Lokhttp3/p;->g:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/p$a;->g:Lokhttp3/q;

    .line 13
    iget-object v0, p1, Lokhttp3/p;->h:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p$a;->h:Lokhttp3/p;

    .line 14
    iget-object v0, p1, Lokhttp3/p;->i:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p$a;->i:Lokhttp3/p;

    .line 15
    iget-object v0, p1, Lokhttp3/p;->j:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p$a;->j:Lokhttp3/p;

    .line 16
    iget-wide v0, p1, Lokhttp3/p;->k:J

    iput-wide v0, p0, Lokhttp3/p$a;->k:J

    .line 17
    iget-wide v0, p1, Lokhttp3/p;->l:J

    iput-wide v0, p0, Lokhttp3/p$a;->l:J

    .line 18
    iget-object p1, p1, Lokhttp3/p;->m:Lokhttp3/internal/connection/c;

    iput-object p1, p0, Lokhttp3/p$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method private e(Lokhttp3/p;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lokhttp3/p;->g:Lokhttp3/q;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Ljava/lang/String;Lokhttp3/p;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lokhttp3/p;->g:Lokhttp3/q;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Lokhttp3/p;->h:Lokhttp3/p;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p2, Lokhttp3/p;->i:Lokhttp3/p;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Lokhttp3/p;->j:Lokhttp3/p;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/k$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/k$a;

    return-object p0
.end method

.method public b(Lokhttp3/q;)Lokhttp3/p$a;
    .locals 0
    .param p1    # Lokhttp3/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->g:Lokhttp3/q;

    return-object p0
.end method

.method public c()Lokhttp3/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/p$a;->a:Lokhttp3/n;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lokhttp3/p$a;->b:Lokhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lokhttp3/p$a;->c:I

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Lokhttp3/p$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lokhttp3/p;

    invoke-direct {v0, p0}, Lokhttp3/p;-><init>(Lokhttp3/p$a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/p$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lokhttp3/p;)Lokhttp3/p$a;
    .locals 1
    .param p1    # Lokhttp3/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lokhttp3/p$a;->f(Ljava/lang/String;Lokhttp3/p;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lokhttp3/p$a;->i:Lokhttp3/p;

    return-object p0
.end method

.method public g(I)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/p$a;->c:I

    return-object p0
.end method

.method public h(Lokhttp3/j;)Lokhttp3/p$a;
    .locals 0
    .param p1    # Lokhttp3/j;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->e:Lokhttp3/j;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/k$a;->g(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/k$a;

    return-object p0
.end method

.method public j(Lokhttp3/k;)Lokhttp3/p$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/k;->f()Lokhttp3/k$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    return-object p0
.end method

.method k(Lokhttp3/internal/connection/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public l(Ljava/lang/String;)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public m(Lokhttp3/p;)Lokhttp3/p$a;
    .locals 1
    .param p1    # Lokhttp3/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lokhttp3/p$a;->f(Ljava/lang/String;Lokhttp3/p;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lokhttp3/p$a;->h:Lokhttp3/p;

    return-object p0
.end method

.method public n(Lokhttp3/p;)Lokhttp3/p$a;
    .locals 0
    .param p1    # Lokhttp3/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/p$a;->e(Lokhttp3/p;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lokhttp3/p$a;->j:Lokhttp3/p;

    return-object p0
.end method

.method public o(Lokhttp3/Protocol;)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->b:Lokhttp3/Protocol;

    return-object p0
.end method

.method public p(J)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/p$a;->l:J

    return-object p0
.end method

.method public q(Lokhttp3/n;)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/p$a;->a:Lokhttp3/n;

    return-object p0
.end method

.method public r(J)Lokhttp3/p$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/p$a;->k:J

    return-object p0
.end method
