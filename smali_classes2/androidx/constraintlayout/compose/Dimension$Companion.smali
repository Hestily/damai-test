.class public final Landroidx/constraintlayout/compose/Dimension$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/compose/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eR\u0013\u0010\u0013\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0016\u001a\u00020\u00088F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0018\u001a\u00020\u00088F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0013\u0010\u001a\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0012\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/Dimension$Companion;",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "dp",
        "Landroidx/constraintlayout/compose/Dimension$MinCoercible;",
        "preferredValue-0680j_4",
        "(F)Landroidx/constraintlayout/compose/Dimension$MinCoercible;",
        "preferredValue",
        "Landroidx/constraintlayout/compose/Dimension;",
        "value-0680j_4",
        "(F)Landroidx/constraintlayout/compose/Dimension;",
        "value",
        "",
        "ratio",
        "",
        "percent",
        "Landroidx/constraintlayout/compose/Dimension$Coercible;",
        "getPreferredWrapContent",
        "()Landroidx/constraintlayout/compose/Dimension$Coercible;",
        "preferredWrapContent",
        "getWrapContent",
        "()Landroidx/constraintlayout/compose/Dimension;",
        "wrapContent",
        "getMatchParent",
        "matchParent",
        "getFillToConstraints",
        "fillToConstraints",
        "<init>",
        "()V",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/constraintlayout/compose/Dimension$Companion;

    invoke-direct {v0}, Landroidx/constraintlayout/compose/Dimension$Companion;-><init>()V

    sput-object v0, Landroidx/constraintlayout/compose/Dimension$Companion;->$$INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFillToConstraints()Landroidx/constraintlayout/compose/Dimension$Coercible;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    sget-object v1, Landroidx/constraintlayout/compose/Dimension$Companion$fillToConstraints$1;->INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion$fillToConstraints$1;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final getMatchParent()Landroidx/constraintlayout/compose/Dimension;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    sget-object v1, Landroidx/constraintlayout/compose/Dimension$Companion$matchParent$1;->INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion$matchParent$1;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final getPreferredWrapContent()Landroidx/constraintlayout/compose/Dimension$Coercible;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    sget-object v1, Landroidx/constraintlayout/compose/Dimension$Companion$preferredWrapContent$1;->INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion$preferredWrapContent$1;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final getWrapContent()Landroidx/constraintlayout/compose/Dimension;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    sget-object v1, Landroidx/constraintlayout/compose/Dimension$Companion$wrapContent$1;->INSTANCE:Landroidx/constraintlayout/compose/Dimension$Companion$wrapContent$1;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final percent(F)Landroidx/constraintlayout/compose/Dimension;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    new-instance v1, Landroidx/constraintlayout/compose/Dimension$Companion$percent$1;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/compose/Dimension$Companion$percent$1;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final preferredValue-0680j_4(F)Landroidx/constraintlayout/compose/Dimension$MinCoercible;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    new-instance v1, Landroidx/constraintlayout/compose/Dimension$Companion$preferredValue$1;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/compose/Dimension$Companion$preferredValue$1;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final ratio(Ljava/lang/String;)Landroidx/constraintlayout/compose/Dimension;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "ratio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    new-instance v1, Landroidx/constraintlayout/compose/Dimension$Companion$ratio$1;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/compose/Dimension$Companion$ratio$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final value-0680j_4(F)Landroidx/constraintlayout/compose/Dimension;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/DimensionDescription;

    new-instance v1, Landroidx/constraintlayout/compose/Dimension$Companion$value$1;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/compose/Dimension$Companion$value$1;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/DimensionDescription;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
