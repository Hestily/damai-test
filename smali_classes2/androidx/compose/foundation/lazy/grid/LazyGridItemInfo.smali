.class public interface abstract Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UnknownColumn:I = -0x1

.field public static final UnknownRow:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo$Companion;->$$INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo$Companion;

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo$Companion;

    return-void
.end method


# virtual methods
.method public abstract getColumn()I
.end method

.method public abstract getIndex()I
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOffset-nOcc-ac()J
.end method

.method public abstract getRow()I
.end method

.method public abstract getSize-YbymL2g()J
.end method
