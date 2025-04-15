.class public abstract Landroidx/compose/foundation/layout/AlignmentLineProvider;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;,
        Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/AlignmentLineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Placeable;)I
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
