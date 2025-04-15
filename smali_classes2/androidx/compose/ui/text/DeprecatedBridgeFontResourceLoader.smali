.class final Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/text/font/Font$ResourceLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lock:Landroidx/compose/ui/text/platform/SynchronizedObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->Companion:Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    .line 2
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;-><init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    return-void
.end method

.method public static final synthetic access$getCache$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-object v0
.end method

.method public static final synthetic access$setCache$cp(Ljava/util/Map;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by FontFamily.Resolver, this method should not be called"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FontFamily.Resolver.resolve(font, )"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 2
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontKt;->toFontFamily(Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 4
    invoke-interface {p1}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v1 .. v7}, Ltb/ip1;->a(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
