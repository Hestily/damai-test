.class public final Landroidx/compose/ui/tooling/data/SlotTreeKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final BITS_PER_SLOT:I = 0x3

.field private static final SLOT_MASK:I = 0x7

.field private static final STABLE_BITS:I = 0x4

.field private static final STATIC_BITS:I = 0x3

.field private static final changedFieldName:Ljava/lang/String; = "$$changed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultFieldName:Ljava/lang/String; = "$$default"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final emptyBox:Landroidx/compose/ui/unit/IntRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final internalFieldPrefix:Ljava/lang/String; = "$$"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final jacocoDataField:Ljava/lang/String; = "$jacoco"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final parameterPrefix:Ljava/lang/String; = "$"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final parametersInformationTokenizer:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final recomposeScopeNameSuffix:Ljava/lang/String; = ".RecomposeScopeImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tokenizer:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    .line 2
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+)|([,])|([*])|([:])|L|(P\\([^)]*\\))|(C(\\(([^)]*)\\))?)|@"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->tokenizer:Lkotlin/text/Regex;

    .line 3
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+)|,|[!P()]|:([^,!)]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parametersInformationTokenizer:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic access$boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v0, "declaredFields"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v2, v3

    :cond_2
    return-object v2
.end method

.method public static final asTree(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/ui/tooling/data/Group;
    .locals 1
    .param p0    # Landroidx/compose/runtime/tooling/CompositionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/tooling/CompositionGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2
    :cond_0
    sget-object p0, Landroidx/compose/ui/tooling/data/EmptyGroup;->INSTANCE:Landroidx/compose/ui/tooling/data/EmptyGroup;

    :cond_1
    return-object p0
.end method

.method private static final boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->getWidth()I

    move-result v1

    .line 4
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0

    .line 6
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 10
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    add-int/2addr v1, p0

    .line 11
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    .line 12
    new-instance v3, Landroidx/compose/ui/unit/IntRect;

    invoke-direct {v3, p0, v0, v1, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v3
.end method

.method private static final callName(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;
    .locals 22
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/data/SourceInformationContext;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    const-string v0, "it.name"

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.javaClass.name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, ".RecomposeScopeImpl"

    invoke-static {v7, v8, v6, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_12

    .line 4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v7, "block"

    invoke-static {v1, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v7, "$$default"

    .line 7
    invoke-static {v3, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-string v8, "$$changed"

    .line 8
    invoke-static {v3, v8}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v9, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v7, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 10
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 11
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v9, "blockClass.declaredFields"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v10, v3

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v3, v11

    .line 14
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "$"

    invoke-static {v13, v14, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 15
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "$$"

    invoke-static {v13, v14, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 16
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "$jacoco"

    invoke-static {v13, v14, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_6

    .line 17
    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 18
    :cond_7
    new-instance v0, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractParameterInfo$$inlined$sortedBy$1;

    invoke-direct {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractParameterInfo$$inlined$sortedBy$1;-><init>()V

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getParameters()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_9

    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 21
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_11

    .line 22
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 23
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/tooling/data/Parameter;

    goto :goto_7

    :cond_a
    new-instance v12, Landroidx/compose/ui/tooling/data/Parameter;

    invoke-direct {v12, v11, v5, v4, v5}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    :goto_7
    invoke-virtual {v12}, Landroidx/compose/ui/tooling/data/Parameter;->getSortedIndex()I

    move-result v13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_10

    .line 25
    invoke-virtual {v12}, Landroidx/compose/ui/tooling/data/Parameter;->getSortedIndex()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    .line 26
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {v13, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    shl-int v14, v2, v11

    and-int/2addr v14, v7

    if-eqz v14, :cond_b

    const/16 v17, 0x1

    goto :goto_8

    :cond_b
    const/16 v17, 0x0

    :goto_8
    mul-int/lit8 v14, v11, 0x3

    add-int/2addr v14, v2

    const/4 v15, 0x7

    shl-int/2addr v15, v14

    and-int/2addr v15, v8

    shr-int v14, v15, v14

    and-int/lit8 v15, v14, 0x3

    const/4 v4, 0x3

    if-ne v15, v4, :cond_c

    const/16 v18, 0x1

    goto :goto_9

    :cond_c
    const/16 v18, 0x0

    :goto_9
    if-nez v15, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_e

    const/16 v21, 0x1

    goto :goto_b

    :cond_e
    const/16 v21, 0x0

    .line 28
    :goto_b
    new-instance v15, Landroidx/compose/ui/tooling/data/ParameterInformation;

    .line 29
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "field.name"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "this as java.lang.String).substring(startIndex)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_f

    if-nez v17, :cond_f

    const/16 v19, 0x1

    goto :goto_c

    :cond_f
    const/16 v19, 0x0

    .line 30
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/ui/tooling/data/Parameter;->getInlineClass()Ljava/lang/String;

    move-result-object v20

    move-object v14, v15

    move-object v4, v15

    move-object v15, v13

    .line 31
    invoke-direct/range {v14 .. v21}, Landroidx/compose/ui/tooling/data/ParameterInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZZLjava/lang/String;Z)V

    .line 32
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    goto/16 :goto_6

    :cond_11
    return-object v3

    .line 33
    :catchall_0
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final findParameters(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/util/List;
    .locals 4
    .param p0    # Landroidx/compose/runtime/tooling/CompositionGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/tooling/data/ContextCache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "Landroidx/compose/ui/tooling/data/ContextCache;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 2
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/ContextCache;->getContexts$ui_tooling_data_release()Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v3

    .line 6
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    instance-of p1, v3, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    if-eqz p1, :cond_3

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 8
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 10
    invoke-static {p1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findParameters$default(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->findParameters(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getEmptyBox()Landroidx/compose/ui/unit/IntRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    return-object v0
.end method

.method private static final getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;
    .locals 11
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 3
    :goto_0
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getNode()Ljava/lang/Object;

    move-result-object v3

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 7
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 8
    invoke-static {v5, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    instance-of v4, v3, Landroidx/compose/ui/layout/LayoutInfo;

    if-eqz v4, :cond_2

    .line 10
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/LayoutInfo;

    invoke-interface {v5}, Landroidx/compose/ui/layout/LayoutInfo;->getModifierInfo()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_2
    if-eqz v4, :cond_3

    .line 12
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/LayoutInfo;

    invoke-static {v4}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    goto :goto_5

    .line 13
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    goto :goto_5

    .line 14
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 16
    check-cast v9, Landroidx/compose/ui/tooling/data/Group;

    .line 17
    invoke-virtual {v9}, Landroidx/compose/ui/tooling/data/Group;->getBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/IntRect;

    check-cast v6, Landroidx/compose/ui/unit/IntRect;

    .line 23
    invoke-static {v9, v6}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v6

    goto :goto_4

    .line 24
    :cond_6
    check-cast v6, Landroidx/compose/ui/unit/IntRect;

    move-object v4, v6

    :goto_5
    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall()Z

    move-result v10

    if-ne v10, v6, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextSourceLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object p1

    goto :goto_7

    :cond_8
    move-object p1, v2

    :goto_7
    if-eqz v3, :cond_9

    .line 26
    new-instance p0, Landroidx/compose/ui/tooling/data/NodeGroup;

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/tooling/data/NodeGroup;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/unit/IntRect;Ljava/util/Collection;Ljava/util/List;Ljava/util/Collection;)V

    goto :goto_c

    .line 27
    :cond_9
    new-instance v10, Landroidx/compose/ui/tooling/data/CallGroup;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    move-object v3, v2

    :goto_8
    if-eqz v0, :cond_b

    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_b
    move-object v5, v2

    :goto_9
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :cond_d
    :goto_a
    if-nez v6, :cond_f

    .line 30
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    if-gtz v5, :cond_e

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    if-lez v5, :cond_f

    .line 31
    :cond_e
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getIdentity()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    goto :goto_b

    :cond_f
    move-object v5, v2

    .line 32
    :goto_b
    invoke-static {v7, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v6

    move-object v0, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    .line 33
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/tooling/data/CallGroup;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/lang/Object;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    move-object p0, v10

    :goto_c
    return-object p0

    .line 34
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty collection can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getPosition(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroidx/compose/ui/tooling/data/Group;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/data/Group;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPosition$annotations(Landroidx/compose/ui/tooling/data/Group;)V
    .locals 0
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    return-void
.end method

.method private static final getText(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final isANumber(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final isCallWithName(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final isClassName(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isFileName(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isNumber(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final isParameterInformation(Lkotlin/text/MatchResult;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final keyPosition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/tooling/data/JoinedKey;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Landroidx/compose/ui/tooling/data/JoinedKey;

    invoke-virtual {p0}, Landroidx/compose/ui/tooling/data/JoinedKey;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/data/JoinedKey;->getRight()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final mapTree(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/compose/runtime/tooling/CompositionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/tooling/data/ContextCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "-",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TT;>;",
            "Landroidx/compose/ui/tooling/data/ContextCache;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/tooling/CompositionGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroidx/compose/ui/tooling/data/CompositionCallStack;

    invoke-virtual {p2}, Landroidx/compose/ui/tooling/data/ContextCache;->getContexts$ui_tooling_data_release()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/tooling/data/CompositionCallStack;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/Map;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p0, p2, p1}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;

    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mapTree$default(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Landroidx/compose/ui/tooling/data/ContextCache;

    invoke-direct {p2}, Landroidx/compose/ui/tooling/data/ContextCache;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->mapTree(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final number(Lkotlin/text/MatchResult;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseToInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final parseParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;"
        }
    .end annotation

    const-string v0, ")"

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v2, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parametersInformationTokenizer:Lkotlin/text/Regex;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p0, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Integer;

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p0, v4

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p0, v6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v7, "P"

    .line 5
    invoke-static {v1, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expect(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    const-string v7, "("

    .line 6
    invoke-static {v1, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expect(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$isChar(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "!"

    .line 8
    invoke-static {v1, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$isChar(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    .line 10
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expectNumber(Lkotlin/jvm/internal/Ref$ObjectRef;)I

    move-result v7

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v6, p0, v8}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$ensureIndexes(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 12
    new-instance v9, Landroidx/compose/ui/tooling/data/Parameter;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v5, v4, v5}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const-string v7, ","

    .line 14
    invoke-static {v1, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$isChar(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expectNumber(Lkotlin/jvm/internal/Ref$ObjectRef;)I

    move-result v7

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$isClassName(Lkotlin/jvm/internal/Ref$ObjectRef;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 17
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expectClassName(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v5

    .line 18
    :goto_2
    new-instance v9, Landroidx/compose/ui/tooling/data/Parameter;

    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v6, p0, v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$ensureIndexes(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;I)V

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {v1, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$expect(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 22
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 23
    new-instance v0, Landroidx/compose/ui/tooling/data/Parameter;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1, v5, v4, v5}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/compose/ui/tooling/data/ParseError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    return-object v2

    .line 25
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 26
    :catch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final parseParameters$ensureIndexes(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p2, v0

    if-lez p2, :cond_2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    const/4 p2, 0x4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2
    iget v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_2
    return-void
.end method

.method private static final parseParameters$expect(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/MatchResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    return-void

    .line 4
    :cond_0
    new-instance p0, Landroidx/compose/ui/tooling/data/ParseError;

    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/ParseError;-><init>()V

    throw p0
.end method

.method private static final parseParameters$expectClassName(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/MatchResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isClassName(Lkotlin/text/MatchResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c#"

    const-string v1, "androidx.compose."

    .line 6
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->replacePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Landroidx/compose/ui/tooling/data/ParseError;

    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/ParseError;-><init>()V

    throw p0
.end method

.method private static final parseParameters$expectNumber(Lkotlin/jvm/internal/Ref$ObjectRef;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/MatchResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isANumber(Lkotlin/text/MatchResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseToInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Landroidx/compose/ui/tooling/data/ParseError;

    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/ParseError;-><init>()V

    throw p0
.end method

.method private static final parseParameters$isChar(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/text/MatchResult;

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final parseParameters$isClassName(Lkotlin/jvm/internal/Ref$ObjectRef;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/text/MatchResult;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isClassName(Lkotlin/text/MatchResult;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final parseParameters$next(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)",
            "Lkotlin/text/MatchResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/MatchResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/text/MatchResult;

    return-object p0
.end method

.method private static final parseToInt(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p0, Landroidx/compose/ui/tooling/data/ParseError;

    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/ParseError;-><init>()V

    throw p0
.end method

.method private static final parseToInt(Ljava/lang/String;I)I
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    new-instance p0, Landroidx/compose/ui/tooling/data/ParseError;

    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/ParseError;-><init>()V

    throw p0
.end method

.method private static final replacePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static final sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 13
    .annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Landroidx/compose/ui/tooling/data/SlotTreeKt;->tokenizer:Lkotlin/text/Regex;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    move-object v6, v4

    move-object v11, v6

    const/4 v10, -0x1

    const/4 v12, 0x0

    .line 3
    :cond_0
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/text/MatchResult;

    .line 5
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isNumber(Lkotlin/text/MatchResult;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_8

    const-string v5, "@"

    invoke-static {v3, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v5, "C"

    .line 6
    invoke-static {v3, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    :goto_0
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isCallWithName(Lkotlin/text/MatchResult;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->callName(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isParameterInformation(Lkotlin/text/MatchResult;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getText(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 13
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    goto :goto_3

    :cond_4
    const-string v5, "*"

    .line 14
    invoke-static {v3, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 16
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    goto :goto_3

    :cond_5
    const-string v5, ","

    .line 17
    invoke-static {v3, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    goto :goto_3

    .line 18
    :cond_6
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isFileName(Lkotlin/text/MatchResult;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#"

    const-string v3, ""

    .line 20
    invoke-static {p0, v0, v3}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_b

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x24

    .line 23
    :try_start_0
    invoke-static {v0, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->parseToInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    .line 24
    :cond_8
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$parseLocation(Lkotlin/jvm/internal/Ref$ObjectRef;)Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_9
    :goto_3
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_a
    move-object p0, v4

    .line 26
    :cond_b
    :goto_4
    new-instance v0, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    if-nez p0, :cond_d

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getSourceFile()Ljava/lang/String;

    move-result-object v4

    :cond_c
    move-object v7, v4

    goto :goto_5

    :cond_d
    move-object v7, p0

    :goto_5
    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    if-eqz p1, :cond_f

    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getPackageHash()I

    move-result p0

    move v8, p0

    goto :goto_7

    :cond_f
    :goto_6
    move v8, v1

    :goto_7
    move-object v5, v0

    .line 29
    invoke-direct/range {v5 .. v12}, Landroidx/compose/ui/tooling/data/SourceInformationContext;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/util/List;Z)V

    return-object v0
.end method

.method static synthetic sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object p0

    return-object p0
.end method

.method private static final sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)",
            "Lkotlin/text/MatchResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/MatchResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/text/MatchResult;

    return-object p0
.end method

.method private static final sourceInformationContextOf$parseLocation(Lkotlin/jvm/internal/Ref$ObjectRef;)Landroidx/compose/ui/tooling/data/SourceLocationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/text/MatchResult;",
            ">;)",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlin/text/MatchResult;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isNumber(Lkotlin/text/MatchResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->number(Lkotlin/text/MatchResult;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_6

    const-string v3, "@"

    .line 5
    invoke-static {v1, v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isNumber(Lkotlin/text/MatchResult;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-static {v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->number(Lkotlin/text/MatchResult;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "L"

    .line 10
    invoke-static {v3, v4}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isChar(Lkotlin/text/MatchResult;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$next-4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/text/MatchResult;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->isNumber(Lkotlin/text/MatchResult;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->number(Lkotlin/text/MatchResult;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    move-object p0, v0

    goto :goto_3

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    move-object p0, v0

    move-object v1, p0

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    .line 14
    new-instance v3, Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    invoke-direct {v3, v2, v1, p0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroidx/compose/ui/tooling/data/ParseError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :cond_7
    return-object v0
.end method

.method public static final union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4
    .param p0    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 6
    new-instance p1, Landroidx/compose/ui/unit/IntRect;

    invoke-direct {p1, v0, v1, p0, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object p1
.end method
