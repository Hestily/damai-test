.class public interface abstract Landroidx/compose/ui/Alignment;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/Alignment$Horizontal;,
        Landroidx/compose/ui/Alignment$Vertical;,
        Landroidx/compose/ui/Alignment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/Alignment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    sput-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    return-void
.end method


# virtual methods
.method public abstract align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J
    .param p5    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
