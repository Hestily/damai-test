.class Lokhttp3/q$a;
.super Lokhttp3/q;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/q;->k(Ltb/wo2;JLokio/BufferedSource;)Lokhttp3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltb/wo2;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Ltb/wo2;JLokio/BufferedSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/q$a;->a:Ltb/wo2;

    iput-wide p2, p0, Lokhttp3/q$a;->b:J

    iput-object p4, p0, Lokhttp3/q$a;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/q;-><init>()V

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/q$a;->b:J

    return-wide v0
.end method

.method public j()Ltb/wo2;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/q$a;->a:Ltb/wo2;

    return-object v0
.end method

.method public m()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/q$a;->c:Lokio/BufferedSource;

    return-object v0
.end method
