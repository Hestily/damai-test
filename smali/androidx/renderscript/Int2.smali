.class public Landroidx/renderscript/Int2;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/renderscript/Int2;->x:I

    .line 4
    iput p2, p0, Landroidx/renderscript/Int2;->y:I

    return-void
.end method
