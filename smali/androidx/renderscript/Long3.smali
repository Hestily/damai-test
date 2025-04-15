.class public Landroidx/renderscript/Long3;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/renderscript/Long3;->x:J

    .line 4
    iput-wide p3, p0, Landroidx/renderscript/Long3;->y:J

    .line 5
    iput-wide p5, p0, Landroidx/renderscript/Long3;->z:J

    return-void
.end method
