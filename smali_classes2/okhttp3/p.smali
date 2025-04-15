.class public final Lokhttp3/p;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/p$a;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/n;

.field final b:Lokhttp3/Protocol;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lokhttp3/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Lokhttp3/k;

.field final g:Lokhttp3/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Lokhttp3/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:J

.field final l:J

.field final m:Lokhttp3/internal/connection/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile n:Ltb/bp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/p$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lokhttp3/p$a;->a:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/p;->a:Lokhttp3/n;

    .line 3
    iget-object v0, p1, Lokhttp3/p$a;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/p;->b:Lokhttp3/Protocol;

    .line 4
    iget v0, p1, Lokhttp3/p$a;->c:I

    iput v0, p0, Lokhttp3/p;->c:I

    .line 5
    iget-object v0, p1, Lokhttp3/p$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/p;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lokhttp3/p$a;->e:Lokhttp3/j;

    iput-object v0, p0, Lokhttp3/p;->e:Lokhttp3/j;

    .line 7
    iget-object v0, p1, Lokhttp3/p$a;->f:Lokhttp3/k$a;

    invoke-virtual {v0}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/p;->f:Lokhttp3/k;

    .line 8
    iget-object v0, p1, Lokhttp3/p$a;->g:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/p;->g:Lokhttp3/q;

    .line 9
    iget-object v0, p1, Lokhttp3/p$a;->h:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p;->h:Lokhttp3/p;

    .line 10
    iget-object v0, p1, Lokhttp3/p$a;->i:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p;->i:Lokhttp3/p;

    .line 11
    iget-object v0, p1, Lokhttp3/p$a;->j:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/p;->j:Lokhttp3/p;

    .line 12
    iget-wide v0, p1, Lokhttp3/p$a;->k:J

    iput-wide v0, p0, Lokhttp3/p;->k:J

    .line 13
    iget-wide v0, p1, Lokhttp3/p$a;->l:J

    iput-wide v0, p0, Lokhttp3/p;->l:J

    .line 14
    iget-object p1, p1, Lokhttp3/p$a;->m:Lokhttp3/internal/connection/c;

    iput-object p1, p0, Lokhttp3/p;->m:Lokhttp3/internal/connection/c;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/q;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/p;->g:Lokhttp3/q;

    return-object v0
.end method

.method public c()Ltb/bp;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p;->n:Ltb/bp;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/p;->f:Lokhttp3/k;

    invoke-static {v0}, Ltb/bp;->k(Lokhttp3/k;)Ltb/bp;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/p;->n:Ltb/bp;

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/p;->g:Lokhttp3/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/q;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/p;->c:I

    return v0
.end method

.method public f()Lokhttp3/j;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/p;->e:Lokhttp3/j;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lokhttp3/p;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/p;->f:Lokhttp3/k;

    invoke-virtual {v0, p1}, Lokhttp3/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public isSuccessful()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/p;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lokhttp3/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p;->f:Lokhttp3/k;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lokhttp3/p$a;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0, p0}, Lokhttp3/p$a;-><init>(Lokhttp3/p;)V

    return-object v0
.end method

.method public m()Lokhttp3/p;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/p;->j:Lokhttp3/p;

    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/p;->l:J

    return-wide v0
.end method

.method public o()Lokhttp3/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/p;->a:Lokhttp3/n;

    return-object v0
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/p;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/p;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/p;->a:Lokhttp3/n;

    .line 2
    invoke-virtual {v1}, Lokhttp3/n;->h()Lokhttp3/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
