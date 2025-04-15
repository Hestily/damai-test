.class public final Lokhttp3/n;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/n$a;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/l;

.field final b:Ljava/lang/String;

.field final c:Lokhttp3/k;

.field final d:Lokhttp3/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Ltb/bp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/n$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lokhttp3/n$a;->a:Lokhttp3/l;

    iput-object v0, p0, Lokhttp3/n;->a:Lokhttp3/l;

    .line 3
    iget-object v0, p1, Lokhttp3/n$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/n;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    invoke-virtual {v0}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/n;->c:Lokhttp3/k;

    .line 5
    iget-object v0, p1, Lokhttp3/n$a;->d:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/n;->d:Lokhttp3/o;

    .line 6
    iget-object p1, p1, Lokhttp3/n$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lokhttp3/internal/a;->v(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/n;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/o;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/n;->d:Lokhttp3/o;

    return-object v0
.end method

.method public b()Ltb/bp;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n;->f:Ltb/bp;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/n;->c:Lokhttp3/k;

    invoke-static {v0}, Ltb/bp;->k(Lokhttp3/k;)Ltb/bp;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/n;->f:Ltb/bp;

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/n;->c:Lokhttp3/k;

    invoke-virtual {v0, p1}, Lokhttp3/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lokhttp3/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n;->c:Lokhttp3/k;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n;->a:Lokhttp3/l;

    invoke-virtual {v0}, Lokhttp3/l;->n()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lokhttp3/n$a;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/n$a;

    invoke-direct {v0, p0}, Lokhttp3/n$a;-><init>(Lokhttp3/n;)V

    return-object v0
.end method

.method public h()Lokhttp3/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n;->a:Lokhttp3/l;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/n;->a:Lokhttp3/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/n;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
