.class public Landroidx/renderscript/Long4;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public w:J

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

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/renderscript/Long4;->x:J

    .line 4
    iput-wide p3, p0, Landroidx/renderscript/Long4;->y:J

    .line 5
    iput-wide p5, p0, Landroidx/renderscript/Long4;->z:J

    .line 6
    iput-wide p7, p0, Landroidx/renderscript/Long4;->w:J

    return-void
.end method
