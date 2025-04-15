.class public abstract Landroidx/compose/ui/text/font/AndroidPreloadedFont;
.super Landroidx/compose/ui/text/font/AndroidFont;
.source "Taobao"


# instance fields
.field private didInitWithContext:Z

.field private final style:I

.field private typeface:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final weight:Landroidx/compose/ui/text/font/FontWeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getBlocking-PKNRLFQ()I

    move-result v0

    .line 2
    sget-object v1, Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;->INSTANCE:Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p3, v2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    .line 5
    iput p2, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->style:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/AndroidPreloadedFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-void
.end method


# virtual methods
.method public abstract doLoad$ui_text_release(Landroid/content/Context;)Landroid/graphics/Typeface;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCacheKey()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getStyle-_-LCdwA()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->style:I

    return v0
.end method

.method public final getTypeface$ui_text_release()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object v0
.end method

.method public final loadCached$ui_text_release(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->didInitWithContext:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->doLoad$ui_text_release(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->typeface:Landroid/graphics/Typeface;

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->didInitWithContext:Z

    .line 4
    iget-object p1, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public final setTypeface$ui_text_release(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->typeface:Landroid/graphics/Typeface;

    return-void
.end method
