.class public final Landroidx/compose/ui/draw/BlurredEdgeTreatment;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Rectangle:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unbounded:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Companion:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    .line 1
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->constructor-impl(Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Rectangle:Landroidx/compose/ui/graphics/Shape;

    .line 2
    invoke-static {v1}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->constructor-impl(Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Unbounded:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method private synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public static final synthetic access$getRectangle$cp()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Rectangle:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public static final synthetic access$getUnbounded$cp()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Unbounded:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public static final synthetic box-impl(Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/draw/BlurredEdgeTreatment;
    .locals 1

    new-instance v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    invoke-direct {v0, p0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;-><init>(Landroidx/compose/ui/graphics/Shape;)V

    return-object v0
.end method

.method public static constructor-impl(Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/graphics/Shape;
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public static equals-impl(Landroidx/compose/ui/graphics/Shape;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    invoke-virtual {p1}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->unbox-impl()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Landroidx/compose/ui/graphics/Shape;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static toString-impl(Landroidx/compose/ui/graphics/Shape;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurredEdgeTreatment(shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, p1}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->equals-impl(Landroidx/compose/ui/graphics/Shape;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->hashCode-impl(Landroidx/compose/ui/graphics/Shape;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->toString-impl(Landroidx/compose/ui/graphics/Shape;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method
