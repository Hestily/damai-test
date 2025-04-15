.class public final Landroidx/compose/runtime/HotReloader$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/HotReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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

    invoke-direct {p0}, Landroidx/compose/runtime/HotReloader$Companion;-><init>()V

    return-void
.end method

.method private final loadStateAndCompose(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->loadStateAndComposeForHotReload$runtime_release(Ljava/lang/Object;)V

    return-void
.end method

.method private final saveStateAndDispose(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer$Companion;->saveStateAndDisposeForHotReload$runtime_release()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final clearErrors$runtime_release()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer$Companion;->clearErrors$runtime_release()V

    return-void
.end method

.method public final getCurrentErrors$runtime_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposerErrorInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer$Companion;->getCurrentErrors$runtime_release()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateGroupsWithKey$runtime_release(I)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->invalidateGroupsWithKey$runtime_release(I)V

    return-void
.end method

.method public final simulateHotReload$runtime_release(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/HotReloader$Companion;->saveStateAndDispose(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/HotReloader$Companion;->loadStateAndCompose(Ljava/lang/Object;)V

    return-void
.end method
