.class public final Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Enter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Exit:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    const-string v0, "Enter"

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Enter:Ljava/lang/String;

    const-string v0, "Exit"

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Exit:Ljava/lang/String;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEnter$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Enter:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getExit$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Exit:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic box-impl(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;
    .locals 1

    new-instance v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    invoke-direct {v0, p0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static constructor-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->value:Ljava/lang/String;

    return-object v0
.end method
