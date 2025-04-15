.class public Landroidx/renderscript/Float4;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/renderscript/Float4;->x:F

    .line 4
    iput p2, p0, Landroidx/renderscript/Float4;->y:F

    .line 5
    iput p3, p0, Landroidx/renderscript/Float4;->z:F

    .line 6
    iput p4, p0, Landroidx/renderscript/Float4;->w:F

    return-void
.end method
