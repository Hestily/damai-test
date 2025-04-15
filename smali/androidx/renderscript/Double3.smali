.class public Landroidx/renderscript/Double3;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/renderscript/Double3;->x:D

    .line 4
    iput-wide p3, p0, Landroidx/renderscript/Double3;->y:D

    .line 5
    iput-wide p5, p0, Landroidx/renderscript/Double3;->z:D

    return-void
.end method
