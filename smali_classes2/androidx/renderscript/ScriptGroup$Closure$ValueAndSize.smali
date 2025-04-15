.class final Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p2, Landroidx/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Landroidx/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    .line 5
    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 7
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    .line 8
    :cond_2
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 10
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    .line 11
    :cond_3
    instance-of p1, p2, Ljava/lang/Long;

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 12
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 13
    iput v1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    .line 14
    :cond_4
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_5

    .line 15
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 16
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    .line 17
    :cond_5
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_6

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 19
    iput v1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    :cond_6
    :goto_1
    return-void
.end method
