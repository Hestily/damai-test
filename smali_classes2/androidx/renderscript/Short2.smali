.class public Landroidx/renderscript/Short2;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Landroidx/renderscript/Short2;->x:S

    .line 4
    iput-short p2, p0, Landroidx/renderscript/Short2;->y:S

    return-void
.end method
