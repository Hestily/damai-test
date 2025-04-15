.class public final Lokhttp3/m$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lokhttp3/k;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Lokhttp3/o;


# direct methods
.method private constructor <init>(Lokhttp3/k;Lokhttp3/o;)V
    .locals 0
    .param p1    # Lokhttp3/k;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/m$b;->a:Lokhttp3/k;

    .line 3
    iput-object p2, p0, Lokhttp3/m$b;->b:Lokhttp3/o;

    return-void
.end method

.method public static a(Lokhttp3/k;Lokhttp3/o;)Lokhttp3/m$b;
    .locals 1
    .param p0    # Lokhttp3/k;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "body == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p0, v0}, Lokhttp3/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 4
    invoke-virtual {p0, v0}, Lokhttp3/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    :goto_1
    new-instance v0, Lokhttp3/m$b;

    invoke-direct {v0, p0, p1}, Lokhttp3/m$b;-><init>(Lokhttp3/k;Lokhttp3/o;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/m$b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Lokhttp3/o;->c(Ltb/wo2;Ljava/lang/String;)Lokhttp3/o;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lokhttp3/m$b;->c(Ljava/lang/String;Ljava/lang/String;Lokhttp3/o;)Lokhttp3/m$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lokhttp3/o;)Lokhttp3/m$b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "name == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0}, Lokhttp3/m;->i(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0, p1}, Lokhttp3/m;->i(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance p0, Lokhttp3/k$a;

    invoke-direct {p0}, Lokhttp3/k$a;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lokhttp3/k$a;->d(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lokhttp3/k$a;->e()Lokhttp3/k;

    move-result-object p0

    .line 9
    invoke-static {p0, p2}, Lokhttp3/m$b;->a(Lokhttp3/k;Lokhttp3/o;)Lokhttp3/m$b;

    move-result-object p0

    return-object p0
.end method
