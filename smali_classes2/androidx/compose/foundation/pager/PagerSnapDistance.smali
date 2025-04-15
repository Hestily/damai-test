.class public interface abstract Landroidx/compose/foundation/pager/PagerSnapDistance;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;->$$INSTANCE:Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;

    sput-object v0, Landroidx/compose/foundation/pager/PagerSnapDistance;->Companion:Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;

    return-void
.end method


# virtual methods
.method public abstract calculateTargetPage(IIFII)I
.end method
