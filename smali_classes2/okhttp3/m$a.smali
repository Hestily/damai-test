.class public final Lokhttp3/m$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/ByteString;

.field private b:Ltb/wo2;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/m$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lokhttp3/m;->MIXED:Ltb/wo2;

    iput-object v0, p0, Lokhttp3/m$a;->b:Ltb/wo2;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/m$a;->c:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/m$a;->a:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/m$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lokhttp3/m$b;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/m$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/m$a;->c(Lokhttp3/m$b;)Lokhttp3/m$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/o;)Lokhttp3/m$a;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2, p3}, Lokhttp3/m$b;->c(Ljava/lang/String;Ljava/lang/String;Lokhttp3/o;)Lokhttp3/m$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/m$a;->c(Lokhttp3/m$b;)Lokhttp3/m$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lokhttp3/m$b;)Lokhttp3/m$a;
    .locals 1

    const-string v0, "part == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lokhttp3/m$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()Lokhttp3/m;
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/m$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/m;

    iget-object v1, p0, Lokhttp3/m$a;->a:Lokio/ByteString;

    iget-object v2, p0, Lokhttp3/m$a;->b:Ltb/wo2;

    iget-object v3, p0, Lokhttp3/m$a;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/m;-><init>(Lokio/ByteString;Ltb/wo2;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
