.class public final Landroidx/emoji2/text/flatbuffer/FloatVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/FloatVector;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method
