.class public final Landroidx/compose/ui/tooling/ComposeViewAdapterKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final ANIMATED_CONTENT:Ljava/lang/String; = "AnimatedContent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ANIMATED_VISIBILITY:Ljava/lang/String; = "AnimatedVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ANIMATE_VALUE_AS_STATE:Ljava/lang/String; = "animateValueAsState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DESIGN_INFO_METHOD:Ljava/lang/String; = "getDesignInfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REMEMBER:Ljava/lang/String; = "remember"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SIZE_ANIMATION_MODIFIER:Ljava/lang/String; = "androidx.compose.animation.SizeAnimationModifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TOOLS_NS_URI:Ljava/lang/String; = "http://schemas.android.com/tools"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UPDATE_TRANSITION_FUNCTION_NAME:Ljava/lang/String; = "updateTransition"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final emptyContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->INSTANCE:Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->getLambda-1$ui_tooling_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/tooling/ComposeViewAdapterKt;->emptyContent:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getEmptyContent$p()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/ComposeViewAdapterKt;->emptyContent:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
