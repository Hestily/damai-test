.class Lokhttp3/o$a;
.super Lokhttp3/o;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/o;->e(Ltb/wo2;[BII)Lokhttp3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltb/wo2;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Ltb/wo2;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/o$a;->a:Ltb/wo2;

    iput p2, p0, Lokhttp3/o$a;->b:I

    iput-object p3, p0, Lokhttp3/o$a;->c:[B

    iput p4, p0, Lokhttp3/o$a;->d:I

    invoke-direct {p0}, Lokhttp3/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/o$a;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Ltb/wo2;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/o$a;->a:Ltb/wo2;

    return-object v0
.end method

.method public h(Lokio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/o$a;->c:[B

    iget v1, p0, Lokhttp3/o$a;->d:I

    iget v2, p0, Lokhttp3/o$a;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
