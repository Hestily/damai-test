.class public Landroidx/renderscript/Short4;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public w:S

.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Landroidx/renderscript/Short4;->x:S

    .line 4
    iput-short p2, p0, Landroidx/renderscript/Short4;->y:S

    .line 5
    iput-short p3, p0, Landroidx/renderscript/Short4;->z:S

    .line 6
    iput-short p4, p0, Landroidx/renderscript/Short4;->w:S

    return-void
.end method
