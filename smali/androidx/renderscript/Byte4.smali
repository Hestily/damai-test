.class public Landroidx/renderscript/Byte4;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Landroidx/renderscript/Byte4;->x:B

    .line 4
    iput-byte p2, p0, Landroidx/renderscript/Byte4;->y:B

    .line 5
    iput-byte p3, p0, Landroidx/renderscript/Byte4;->z:B

    .line 6
    iput-byte p4, p0, Landroidx/renderscript/Byte4;->w:B

    return-void
.end method
