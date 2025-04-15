.class public final Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/InfiniteAnimationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$Key<",
        "Landroidx/compose/ui/platform/InfiniteAnimationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    invoke-direct {v0}, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;->$$INSTANCE:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
