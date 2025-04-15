.class final Landroidx/compose/ui/tooling/data/CompositionCallStack;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/tooling/data/SourceContext;


# annotations
.annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/tooling/data/SourceContext;"
    }
.end annotation


# instance fields
.field private bounds:Landroidx/compose/ui/unit/IntRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentCallIndex:I

.field private final factory:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "Ljava/util/List<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stack:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "-",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contexts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->factory:Lkotlin/jvm/functions/Function3;

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contexts:Ljava/util/Map;

    .line 4
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    .line 5
    invoke-static {}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getEmptyBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    return-void
.end method

.method private final contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contexts:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v2, v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v1

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    instance-of p1, v1, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    if-eqz p1, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    :cond_1
    return-object v2
.end method

.method private final getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v0
.end method

.method private final isCall(Landroidx/compose/runtime/tooling/CompositionGroup;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "C"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private final parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/tooling/CompositionGroup;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final pop()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v0
.end method

.method private final push(Landroidx/compose/runtime/tooling/CompositionGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;
    .locals 6
    .param p1    # Landroidx/compose/runtime/tooling/CompositionGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "I",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroidx/compose/ui/unit/IntRect;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getEmptyBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->push(Landroidx/compose/runtime/tooling/CompositionGroup;)V

    .line 4
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 6
    invoke-virtual {p0, v4, v3, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    .line 7
    invoke-direct {p0, v4}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->isCall(Landroidx/compose/runtime/tooling/CompositionGroup;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->getNode()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/ui/layout/LayoutInfo;

    if-eqz v3, :cond_2

    check-cast v2, Landroidx/compose/ui/layout/LayoutInfo;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->access$boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 9
    :cond_4
    :goto_2
    iput p2, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->currentCallIndex:I

    .line 10
    iput-object v1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    .line 11
    iget-object p2, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->factory:Lkotlin/jvm/functions/Function3;

    invoke-interface {p2, p1, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->pop()Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v1
.end method

.method public getBounds()Landroidx/compose/ui/unit/IntRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    return v0
.end method

.method public getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x2

    move-object v3, v0

    .line 2
    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v4}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getSourceFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-direct {p0, v2}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    move v5, v3

    move-object v3, v2

    move v2, v5

    goto :goto_0

    .line 4
    :cond_3
    iget v1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->currentCallIndex:I

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceLocation(ILandroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const/4 v1, 0x0

    const-string v2, "C("

    const/4 v8, 0x2

    .line 2
    invoke-static {v0, v2, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v7

    :cond_1
    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-le v1, v8, :cond_2

    .line 4
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v7
.end method

.method public getParameters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 5
    invoke-static {v2, v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->access$extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
