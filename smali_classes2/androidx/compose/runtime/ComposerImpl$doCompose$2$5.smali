.class final Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $savedContent:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/ComposerImpl;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Lkotlin/jvm/functions/Function2;

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->access$startGroup(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$endGroup(Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getForciblyRecompose$p(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getProvidersInvalid$p(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 8
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->access$startGroup(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$endGroup(Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V

    :goto_0
    return-void
.end method
