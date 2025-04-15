.class public Landroidx/renderscript/Float2;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/renderscript/Float2;->x:F

    .line 4
    iput p2, p0, Landroidx/renderscript/Float2;->y:F

    return-void
.end method
