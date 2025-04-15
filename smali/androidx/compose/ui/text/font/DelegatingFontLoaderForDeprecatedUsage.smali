.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# instance fields
.field private final cacheKey:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/Font$ResourceLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->cacheKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public awaitLoad(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/Font;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p2, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    invoke-interface {p2, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCacheKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->cacheKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLoader$ui_text_release()Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    return-object v0
.end method

.method public loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
