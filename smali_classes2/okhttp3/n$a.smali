.class public Lokhttp3/n$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lokhttp3/l;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lokhttp3/k$a;

.field d:Lokhttp3/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/n$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lokhttp3/n$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0}, Lokhttp3/k$a;-><init>()V

    iput-object v0, p0, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    return-void
.end method

.method constructor <init>(Lokhttp3/n;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/n$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lokhttp3/n;->a:Lokhttp3/l;

    iput-object v0, p0, Lokhttp3/n$a;->a:Lokhttp3/l;

    .line 8
    iget-object v0, p1, Lokhttp3/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/n$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lokhttp3/n;->d:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/n$a;->d:Lokhttp3/o;

    .line 10
    iget-object v0, p1, Lokhttp3/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lokhttp3/n;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lokhttp3/n$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Lokhttp3/n;->c:Lokhttp3/k;

    invoke-virtual {p1}, Lokhttp3/k;->f()Lokhttp3/k$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/n$a;->a:Lokhttp3/l;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/n;

    invoke-direct {v0, p0}, Lokhttp3/n;-><init>(Lokhttp3/n$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lokhttp3/n$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lokhttp3/n$a;->e(Ljava/lang/String;Lokhttp3/o;)Lokhttp3/n$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/n$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/k$a;->g(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/k$a;

    return-object p0
.end method

.method public d(Lokhttp3/k;)Lokhttp3/n$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/k;->f()Lokhttp3/k$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lokhttp3/o;)Lokhttp3/n$a;
    .locals 2
    .param p2    # Lokhttp3/o;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "method == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Ltb/z42;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 5
    invoke-static {p1}, Ltb/z42;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_3
    :goto_1
    iput-object p1, p0, Lokhttp3/n$a;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lokhttp3/n$a;->d:Lokhttp3/o;

    return-object p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lokhttp3/o;)Lokhttp3/n$a;
    .locals 1

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0, p1}, Lokhttp3/n$a;->e(Ljava/lang/String;Lokhttp3/o;)Lokhttp3/n$a;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lokhttp3/n$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/n$a;->c:Lokhttp3/k$a;

    invoke-virtual {v0, p1}, Lokhttp3/k$a;->f(Ljava/lang/String;)Lokhttp3/k$a;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lokhttp3/n$a;
    .locals 7

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lokhttp3/l;->l(Ljava/lang/String;)Lokhttp3/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/n$a;->i(Lokhttp3/l;)Lokhttp3/n$a;

    move-result-object p1

    return-object p1
.end method

.method public i(Lokhttp3/l;)Lokhttp3/n$a;
    .locals 1

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lokhttp3/n$a;->a:Lokhttp3/l;

    return-object p0
.end method
