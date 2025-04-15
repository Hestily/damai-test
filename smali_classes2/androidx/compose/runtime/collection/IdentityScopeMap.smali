.class public final Landroidx/compose/runtime/collection/IdentityScopeMap;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private valueOrder:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private values:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    new-array v0, v0, [Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 4
    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method

.method public static final synthetic access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p0

    return-object p0
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 3
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {v4}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v0, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v5, v0, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-direct {p0, v3, p1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    neg-int p1, v2

    return p1
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    .line 1
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-ne v1, p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 3
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :goto_2
    if-ge p1, v0, :cond_5

    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-ne v1, p2, :cond_3

    return p1

    .line 5
    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_4

    :goto_3
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    return p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 6
    :cond_5
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    goto :goto_3
.end method

.method private final getOrCreateIdentitySet(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v5, v0

    .line 4
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 5
    aget v0, v1, v0

    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 7
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object p1, p1, v0

    if-nez p1, :cond_2

    new-instance p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aput-object p1, v1, v0

    .line 9
    :cond_2
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v5, v1, :cond_3

    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    add-int/lit8 v3, v5, 0x1

    invoke-static {v2, v2, v3, v5, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 11
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aput v0, v1, v5

    .line 12
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-object p1

    .line 13
    :cond_4
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Landroidx/compose/runtime/collection/IdentityArraySet;

    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 15
    new-instance v8, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 16
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aput-object v8, v2, v0

    .line 17
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 18
    aput-object p1, v2, v0

    .line 19
    new-array p1, v1, [I

    .line 20
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5

    .line 21
    aput v2, p1, v2

    goto :goto_0

    .line 22
    :cond_5
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v5, v1, :cond_6

    .line 23
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    add-int/lit8 v3, v5, 0x1

    invoke-static {v2, p1, v3, v5, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 24
    :cond_6
    aput v0, p1, v5

    if-lez v5, :cond_7

    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 26
    :cond_7
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 27
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-object v8
.end method

.method public static synthetic getScopeSets$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic getValueOrder$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic getValues$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method private final removingScopes(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v1

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eq v2, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v2

    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v3, v5, v2

    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result p1

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    return-void
.end method

.method private final scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final valueAt(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getOrCreateIdentitySet(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 3
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aput v2, v3, v2

    .line 4
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final forEachScopeOf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return v0
.end method

.method public final getValueOrder()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    return-object v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v1, v1, p1

    .line 3
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 5
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 6
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    invoke-static {v3, v3, p1, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v2, v0, -0x1

    aput v1, p1, v2

    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :cond_2
    return p2

    :cond_3
    return v0
.end method

.method public final removeScope(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v1

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eq v2, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v2

    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v3, v5, v2

    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result p1

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    return-void
.end method

.method public final removeValueIf(Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v0, :cond_6

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aget v5, v5, v2

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 5
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v8

    const-string/jumbo v11, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    if-eq v9, v8, :cond_0

    .line 7
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v11

    aput-object v10, v11, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v7

    move v8, v9

    :goto_2
    if-ge v8, v7, :cond_3

    .line 9
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aput-object v4, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->setSize(I)V

    .line 11
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_5

    if-eq v3, v2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v3

    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v6

    aput v5, v6, v3

    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v4, v5, v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result p1

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_7

    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v2

    aget v2, v2, v0

    aput-object v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    return-void
.end method

.method public final setScopeSets([Landroidx/compose/runtime/collection/IdentityArraySet;)V
    .locals 1
    .param p1    # [Landroidx/compose/runtime/collection/IdentityArraySet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-void
.end method

.method public final setValueOrder([I)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    return-void
.end method

.method public final setValues([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    return-void
.end method
