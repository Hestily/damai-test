.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;->invoke(Landroidx/compose/ui/input/ScrollContainerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $scrollContainerInfo:Landroidx/compose/ui/input/ScrollContainerInfo;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/ScrollContainerInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1$1;->$scrollContainerInfo:Landroidx/compose/ui/input/ScrollContainerInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1$1;->$scrollContainerInfo:Landroidx/compose/ui/input/ScrollContainerInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/input/ScrollContainerInfoKt;->canScroll(Landroidx/compose/ui/input/ScrollContainerInfo;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
