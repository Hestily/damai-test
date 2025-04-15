.class public interface abstract Landroidx/compose/foundation/MarqueeSpacing;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MarqueeSpacing$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/MarqueeSpacing$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/MarqueeSpacing$Companion;->$$INSTANCE:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    sput-object v0, Landroidx/compose/foundation/MarqueeSpacing;->Companion:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    return-void
.end method


# virtual methods
.method public abstract calculateSpacing(Landroidx/compose/ui/unit/Density;II)I
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation
.end method
