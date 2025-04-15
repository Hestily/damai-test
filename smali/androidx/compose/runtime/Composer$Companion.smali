.class public final Landroidx/compose/runtime/Composer$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

.field private static final Empty:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/Composer$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/Composer$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    .line 1
    new-instance v0, Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-direct {v0}, Landroidx/compose/runtime/Composer$Companion$Empty$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Ljava/lang/Object;

    return-object v0
.end method

.method public final setTracer(Landroidx/compose/runtime/CompositionTracer;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/CompositionTracer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeTracingApi;
    .end annotation

    const-string/jumbo v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->access$setCompositionTracer$p(Landroidx/compose/runtime/CompositionTracer;)V

    return-void
.end method
