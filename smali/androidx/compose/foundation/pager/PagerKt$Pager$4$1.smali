.class final Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt$Pager$4;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty1:I

.field final synthetic $isVertical:Z

.field final synthetic $key:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageAvailableSize:F

.field final synthetic $pageContent:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageCount:I

.field final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function1;ZFLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;ZF",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageCount:I

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$key:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$isVertical:Z

    iput p4, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageAvailableSize:F

    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageContent:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$$dirty1:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 10
    .param p1    # Landroidx/compose/foundation/lazy/LazyListScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$LazyList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v2, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageCount:I

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$key:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1$1;

    iget-boolean v5, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$isVertical:Z

    iget v6, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageAvailableSize:F

    iget-object v7, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v8, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$pageContent:Lkotlin/jvm/functions/Function3;

    iget v9, p0, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;->$$dirty1:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1$1;-><init>(ZFLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;I)V

    const v1, -0x35be7d27

    const/4 v4, 0x1

    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope$-CC;->k(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method
