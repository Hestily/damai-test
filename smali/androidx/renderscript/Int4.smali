.class public Landroidx/renderscript/Int4;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/renderscript/Int4;->x:I

    .line 4
    iput p2, p0, Landroidx/renderscript/Int4;->y:I

    .line 5
    iput p3, p0, Landroidx/renderscript/Int4;->z:I

    .line 6
    iput p4, p0, Landroidx/renderscript/Int4;->w:I

    return-void
.end method
